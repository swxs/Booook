# 命令

------

- [命令](#命令)
  - [聚合](#聚合)

------

## 聚合

``` sql
SELECT
    COUNT("a"."abs_答卷编号") AS "5ee1e7f2c98c2e0f24505f8a",
    "a"."项目" AS "5ee1e3f2c98c2e0f24505f88",
    "a"."5ede0d46c98c2e119c9285ef_week" AS "5ee21ac9c98c2e0f24505f8b"
FROM
    (
        SELECT
            "b"."seq",
            "b"."qs15",
            "b"."qf1",
            ABS("b"."seq") AS "abs_答卷编号",
            CASE
                WHEN ("b"."qf1" IN ('选项2')) THEN 's2'
                WHEN ("b"."qf1" IN ('选项1')) THEN 's1'
                ELSE '其他'
            END AS "项目",
            TIME_FORMAT("b"."__time", 'yyyy年第w周') AS "5ede0d46c98c2e119c9285ef_week"
        FROM
            "xm_rspd_data" AS "b"
    ) AS "a"
WHERE
    ("a"."qs15" IN ('情绵地处入枝，草相'))
GROUP BY
    "a"."项目",
    "a"."5ede0d46c98c2e119c9285ef_week"
```
