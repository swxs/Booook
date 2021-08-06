# 重构

------

- [重构](#重构)
  - [流程](#流程)
  - [时机](#时机)
  - [难题](#难题)
  - [代码的坏味道](#代码的坏味道)
  - [重构技术](#重构技术)
    - [重新组织函数](#重新组织函数)
    - [对象之间搬移特性](#对象之间搬移特性)
    - [重新组织数据](#重新组织数据)
    - [简化条件表达式](#简化条件表达式)
    - [简化函数调用](#简化函数调用)
    - [处理概括关系](#处理概括关系)
  - [大型重构](#大型重构)

------

## 流程

- 测试
- 小步修改

## 时机

- 添加功能时
- 修补错误时
- review代码时

## 难题

- 数据库
- 已对外暴露的方法

## 代码的坏味道

- 重复的代码
- 过长的函数
- 过大类
- 过长的参数
- 发散式变化
  - 多种修改会需要一个类进行修改
- 散弹式变化
  - 一个修改需要在多处进行
- 依恋情节
  - 一个类经常因为另一个类的变化而变化
- 数据泥团
  - 经常需要在一起被处理的数据
- 基本型别偏执
  - 不使用类而是使用基本类型表示
- switch
- 平行继承体系
  - 一个类添加子类需要其他类添加对应子类
- 冗余类
- 面向没有的功能
  - 不被使用的特性
- 暂时值域
  - 只在特定逻辑中才会使用的field
- 过度耦合的消息链
- 中间人转手
  - 一个类的方法都委托于其他类
- 狎昵关系
  - 两个类需要对方的私有属性
- 不完美的程序库类
- 纯数据类
- 只是用了一小部分父类方法
- 过多的注释

## 重构技术

### 重新组织函数

- ExtractMethod
    - 函数过长
    - 单独创建函数
- InlineMethod
    - 函数过于简单
    - 直接取消函数；可能是为了重新拆分
- InlineTemp
    - 临时变量只被使用了一次
- ReplaceTempWithQuery
    - 将临时变量写为查询式
    - 为了在外面复用
- IntroduceExplainingVariable
    - 将一个复杂表达式替换为变量
- SplitTemporaryVariable
    - 一个临时变量在多处被不同的目的使用
- RemoveAssignmentsToParaments
    - 修改了参数
- ReplaceMethodWithMethodObject
    - 局部变量的使用导致长函数无法拆分
- SubstituteAlgorithm
    - 重写部分方法
### 对象之间搬移特性
- MoveMethod
- MoveField
- ExtractClass
    - 函数职责有多个
- InlineClass
    - 函数职责过于简单不完善
- HideDelegate
    - 委托会复杂调用的已知内容
- RemoveMiddleMan
    - 委托过多
- IntroduceForeignMethod
- IntroduceLocalExtension
### 重新组织数据
- SelfEncapsulateField
    - 通过函数取值\设值
- ReplaceDataValueWithObject
    - 基本数据类型
- ChangeValueToReference
    - 统一修改
- ChangeRefencceToValue
    - 在不会改变的情况下可以简化在分布式\并发系统中的逻辑
- ReplaceArrayWithObject
- DuplicateObservedData
- ChangeUniderectionalAssociationToBidirectional
    - 本重构需要测试访问函数
    - 通常让单一那端控制
- ChangeBidirectionalAssociationToUniderectional
- ReplaceMagicNumberWithSymbolicConstant
- EncapsulateField
- EncapsulateCollection
- ReplaceRecordWithDataClass
- ReplaceTypeCodeWithClass
    - TypeCode没有行为
- ReplaceTypeCodeWithSubclass
    - TypeCode有行为， 不会修改
- ReplaceTypeCodeWithState\Strategy
    - TypeCode有行为， 会修改
- ReplaceSubclassWithFields
    - 子类没有新特性
### 简化条件表达式
- DecomposeConditional
    - 条件过长
    - 整合到一个函数
- ConsolidateConditionalExpression
    - 多个条件作用目的相同
- ConsolidateDuplicateConditionalFragments
    - 不同条件下相同的执行内容
- RemoveControlFlag
- ReplaceNestedConditionalWithGuardClauses
    - 提前返回
- ReplaceConditionalWithPolymorphism
- IntroduceNullObject
    - 过多的检查对象是否为空
- IntroduceAssertion
    - 加断言 目的是为了替代注释进行说明
### 简化函数调用
- RenameMethod
    - 修改实现之后名字不在适合
- AddParameter
- RemoveParameter
- SeparateQueryFromModifier
    - 保证无副作用
- ParameterizeMethod
    - 功能相同只有依赖于参数不同的函数， 通过参数整合
- ReplaceParameterWithExplicitMethods
- PreserveWholeObject
    - 如果不希望产生依存就不要用
- ReplaceParameterWithMethods
- IntroduceParameterObject
    - DataClump 通过额外的数据类代替
- RemoveSettingMethod
    - 对对象不可修改属性, 不提供setter
- HadeMethod
- ReplaceConstructorWithFactoryMethod
- EncapsulateDowncast
- ReplaceErrorCodeWithException
- ReplaceExceptionWithTest
    - 添加测试的目的是为了提供给调用者
### 处理概括关系
- PullUpField
- PullUpMethod
- PullUpConstructorBody
- PullDownMethod
- PullDownField
- ExtractSubclass
- ExtractSuperclass
- ExtractInterface
- CollapseHierarchy
- FormTemplateMethod
    - 子类大致相同的逻辑可以提炼为模板方法
- ReplaceInheritanceWithDelegation
- ReplaceDelegationWithInheritance

## 大型重构
- TeaseApartInheritance
    梳理并分解继承体系
- ConvertProduralDesignToObjects
    将过程化设计转换为对象化设计
- SeparateDomainFromPresentation
    将领域和表述/显示分离
- ExtractHierarchy
    提炼继承体系
