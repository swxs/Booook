# 聚合查询

------

- [聚合查询](#聚合查询)
	- [删除重复数据](#删除重复数据)
	- [整理字符集](#整理字符集)


------

## 删除重复数据

``` sql
delete from
   windmachine
where
   id not in (
      select
         *
      from
         (
            select
               max(id) as max_id
            from
               windmachine
            group by
               address
         ) b
      where
         windmachine.id = b.max_id
   )
```

## 整理字符集
``` sql

-- 修改数据库表校对规则SQL，执行时将表中列的校对规则一并修改。
delimiter // 

DROP procedure if exists `alter_table_character` // -- 若已存在则删除

CREATE procedure `alter_table_character`() 

BEGIN 
	
	DECLARE f_name varchar(100);
	DECLARE b int default 0;

	/*是否达到记录的末尾控制变量*/
	-- 注意修改下面的数据库名称 wsm_aliyun
	DECLARE table_name cursor for
	SELECT
		TABLE_NAME
	FROM
		information_schema.TABLES
	where
		TABLE_SCHEMA = 'wsm_aliyun'
		and TABLE_NAME like 'wsm_%'
		AND TABLE_COLLATION = 'utf8_unicode_ci';

	DECLARE CONTINUE HANDLER FOR NOT FOUND
	SET
		b = 1;

	-- 打开游标
	OPEN table_name;

	REPEAT FETCH table_name INTO f_name;

		/*获取第一条记录*/
		SET
			@STMT := CONCAT(
				"ALTER TABLE ",
				f_name,
				" CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;"
			);

		PREPARE STMT FROM @STMT;
			EXECUTE STMT;
		-- INSERT into TestTable(name) VALUES (f_name);
		-- ALTER TABLE f_name CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci; 
		UNTIL b = 1

	END REPEAT;

	CLOSE table_name;

END;

//
/*切换回系统默认的命令结束标志*/
delimiter;

-- 执行存储过程
call alter_table_character();

-- 修改数据库的校对规则
set
	names 'utf8' collate 'utf8_general_ci';

-- 查询修改的结果，其实还可以用下面的语句生成相应的SQL，执行这个SQL来完成修改，当然没有上面的存储过程效率高。
-- 查看数据库的校对规则，结果全都为：utf8_general_ci，表示已修改
show variables like 'collation_%';

-- 查看数据库的校对规则，没有数据表明已全部修改。
SELECT
	CONCAT(
		'alter table ',
		TABLE_NAME,
		' CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;'
	) as new_sql
FROM
	INFORMATION_SCHEMA.TABLES
WHERE
	TABLE_SCHEMA = 'wsm_aliyun'
	AND TABLE_NAME LIKE 'wsm_%' -- 数据库名称
	AND TABLE_COLLATION = 'utf8_unicode_ci';

-- 查询列结果，没有数据表明已全部修改。
SELECT
	CONCAT(
		'ALTER TABLE `',
		table_name,
		'` MODIFY `',
		column_name,
		'` ',
		DATA_TYPE,
		'(',
		CHARACTER_MAXIMUM_LENGTH,
		') CHARACTER SET UTF8 COLLATE utf8_general_ci;'
	) as new_sql
FROM
	information_schema.COLUMNS
WHERE
	TABLE_SCHEMA = 'wsm_aliyun' -- 数据库名
	AND TABLE_NAME LIKE 'wsm_%'
	AND DATA_TYPE = 'varchar'
	AND CHARACTER_SET_NAME = 'utf8'
	AND COLLATION_NAME = 'utf8_unicode_ci';
```