# Python

Python（英国发音：/ˈpaɪθən/ 美国发音：/ˈpaɪθɑːn/）是一种广泛使用的解释型、高级编程、通用型编程语言，由吉多·范罗苏姆创造，第一版发布于1991年。可以视之为一种改良（加入一些其他编程语言的优点，如面向对象）的LISP。[来源请求]Python的设计哲学强调代码的可读性和简洁的语法（尤其是使用空格缩进划分代码块，而非使用大括号或者关键词）。相比于C++或Java，Python让开发者能够用更少的代码表达想法。不管是小型还是大型程序，该语言都试图让程序的结构清晰明了。

与Scheme、Ruby、Perl、Tcl等动态类型编程语言一样，Python拥有动态类型系统和垃圾回收功能，能够自动管理内存使用，并且支持多种编程范式，包括面向对象、命令式、函数式和过程式编程。其本身拥有一个巨大而广泛的标准库。

Python 解释器本身几乎可以在所有的操作系统中运行。Python的其中一个解释器CPython是用C语言编写的、是一个由社群驱动的自由软件，当前由Python软件基金会管理。

------

- [Python](#python)

------

## 图谱

{% simplemindmap type="txtmap", style={"height":"2000px"} %}
```
python
    正则
        语法
            .
            \
            []
            \d
            \D
            \s
            \S
            \w
            \W
            *
            +
            ?
            {m}
            {m,n}
            *?
            +?
            ??
            {m,n}?
            ^
            $
            \A
            \Z
            \b
            \B
            |
            ()
            (?P<name>)
            \<number>
            (?p=name)
            (?:)
            (?iLmsux)
            (?#)
            (?=)
            (?!)
            (?<=)
            (?<!)
            (?(id/name)yer-pattern|no-pattern)
        库
            re
                re.compile
                re.match
                re.search
                re.split
                re.findall
                re.finditer
                re.sub
    时间
        库
            time
                time.ctime
            datetime
                datetime
                date
                time
                timedetle
            timestamp
            arrow
        转换
    命令行工具
        click
        google-fire
    单元测试
        unittest
    numpy
    pandas
    调试
        import pdb;pdb.set_trace()
        breakpoint()
            py3.7
    textwrap.dedent
        多行缩进处理
    PEP
        网址
            https://www.python.org/dev/peps/pep-xxxx/
    规范
        PEP8
    Object
        __buildin__
            __metaclass__
                # 请记住，'type'实际上是一个类，就像'str'和'int'一样 # 所以，你可以从type继承 
class UpperAttrMetaClass(type):    
	# __new__ 是在__init__之前被调用的特殊方法     
	# __new__是用来创建对象并返回之的方法    
	# 而__init__只是用来将传入的参数初始化给对象     
	# 你很少用到__new__，除非你希望能够控制对象的创建     
	# 这里，创建的对象是类，我们希望能够自定义它，所以我们这里改写__new__     
	# 如果你希望的话，你也可以在__init__中做些事情     
	# 还有一些高级的用法会涉及到改写__call__特殊方法，但是我们这里不用    
 	def __new__(upperattr_metaclass, future_class_name, future_class_parents, future_class_attr):        
		 attrs = ((name, value) for name, value in future_class_attr.items() if not name.startswith('__'))         
		uppercase_attr = dict((name.upper(), value) for name, value in attrs)         			return type(future_class_name, future_class_parents, uppercase_attr)


	# 复用type.__new__方法
       	# 这就是基本的OOP编程，没什么魔法
        		return type.__new__(upperattr_metaclass, future_class_name, future_class_parents, uppercase_attr)



class UpperAttrMetaclass(type):
    def __new__(cls, name, bases, dct):
        attrs = ((name, value) for name, value in dct.items() if not name.startswith('__')
        uppercase_attr  = dict((name.upper(), value) for name, value in attrs)
        return type.__new__(cls, name, bases, uppercase_attr)

class UpperAttrMetaclass(type):
    def __new__(cls, name, bases, dct):
        attrs = ((name, value) for name, value in dct.items() if not name.startswith('__'))
        uppercase_attr = dict((name.upper(), value) for name, value in attrs)
        return super(UpperAttrMetaclass, cls).__new__(cls, name, bases, uppercase_attr)
            __new__
            __call__
                callable()
            __init__
            __del__
            __str__
            __repr__
            __lt__
            __eq__
            __gt__
            __getitem__
            __len__
            __iter__
            __enter__
            __exit__
    基本数据类型
        List
    常用数据类型
        defaultdict
        namedtuple
            实现中有趣的地方
                类创建
                    类模板及拼接参数
                    exec class_definition in namespace
                    result = namespace[typename]
                    result.__module__ = _sys._getframe(1).f_globals.get('__name__', '__main__')
        OrderedDict
            实现中有趣的地方
                双向链表实现
                    __root = root = []
                    root[:] = [root, root, None]
                    last = root[0]
                    last[1] = root[0] = [last, root, key]
        Counter
        deque
    标准库
        sys
            系统对应功能
                sys.argv
                sys.platform
                sys.exit
                sys.path
                sys.modules
                sys.stdin
                sys.stdout
                sys.stderr
        os
            操作系统功能
                os.name
                os.getcwd
                os.getenv
                os.listdir
                os.remove
                os.system
                os.linesep
                os.sep
                os.path.split
                os.path.existe
        weakref
            弱引用
                weakref.ref
                weakref.proxy
                WeakKeyDictionary
                WeakValueDictionary
    常见问题
        py2
            编码
                字符编码
                    ascii
                    utf8
                        1）对于单字节的符号，字节的第一位设为0，后面7位为这个符号的unicode码。因此对于英语字母，UTF-8编码和ASCII码是相同的。 
                         2）对于n字节的符号（n>1），第一个字节的前n位都设为1，第n+1位设为0，后面字节的前两位一律设为10。剩下的没有提及的二进制位，全部为这个符号的unicode码。
                    utf16
                    utf32
                    GB2312
                    GBK
                    GB18030
                编码规范
                    unicode
                转换
                    decode
                        方法
                            str.decode
                            unicode
                        用处
                            str->unicode
                    encode
                        方法
                            unicode.encode
                        用处
                            unicode->str
                其他
                    都派生于basestring
                    sys.setdefaultencoding
    lambda
    exec/eval
    assert
```
{% endsimplemindmap %}

## 演进

{% simplemindmap type="txtmap", style={"height":"2000px"} %}
```
python演进
    2.0
        python 解释器
            _ 是最后的输出
        基本数据类型
            数字
            字符串
            列表
            字典
        基本的逻辑语句
        异常
        类
        正则
        Unix Signal Handling
        module
            pickle
                __getinitargs__
                __getstate__
                __setstate__
                __dict__
            copy
            socket
    2.6
        PEP 361 -- Python 2.6 and 3.0 Release Schedule
        PEP 352 -- Required Superclass for Exceptions
            之前居然是个类就可以被raise...
        PEP 358 -- The "bytes" Object
        PEP 366 -- Main module explicit relative imports
            if __name__ == "__main__" and __package__ is None: __package__ = "expected.package.name"
        PEP 370 -- Per user site-packages directory
        PEP 3112 -- Bytes literals in Python 3000
        PEP 3127 -- Integer Literal Support and Syntax
        PEP 371 -- Addition of the multiprocessing package to the standard library
    3.5
        PEP478
        PEP 492 -- Coroutines with async and await syntax
            List of high-level changes and new protocols 
 
   *  New syntax for defining coroutines: async def and new await keyword. 
   *  New __await__ method for Future-like objects, and new tp_as_async.am_await slot in PyTypeObject. 
   *  New syntax for asynchronous context managers: async with. And associated protocol with __aenter__ and __aexit__ methods. 
   *  New syntax for asynchronous iteration: async for. And associated protocol with __aiter__, __aexit__ and new built- in exception StopAsyncIteration. New tp_as_async.am_aiter and tp_as_async.am_anext slots in PyTypeObject. 
   *  New AST nodes: AsyncFunctionDef, AsyncFor, AsyncWith, Await. 
   *  New functions: sys.set_coroutine_wrapper(callback), sys.get_coroutine_wrapper(), types.coroutine(gen), inspect.iscoroutinefunction(func), inspect.iscoroutine(obj),inspect.isawaitable(obj), inspect.getcoroutinestate(coro), and inspect.getcoroutinelocals(coro). 
   *  New CO_COROUTINE and CO_ITERABLE_COROUTINE bit flags for code objects. 
   *  New ABCs: collections.abc.Awaitable, collections.abc.Coroutine, collections.abc.AsyncIterable, and collections.abc.AsyncIterator. 
   *  C API changes: new PyCoro_Type (exposed to Python as types.CoroutineType) and PyCoroObject.PyCoro_CheckExact(*o) to test if o is a native coroutine.
        PEP 465 -- A dedicated infix operator for matrix multiplication
            @
        PEP 448 -- Additional Unpacking Generalizations
        PEP 484 -- Type Hints
        PEP 441 Improving Python ZIP Application Support.
            python -m zipapp directory [options] 

 -o archive / --output archive 

 -p interpreter / --python interpreter 

 -m pkg.mod:fn / --main pkg.mod:fn 

python -m zipapp app.pyz --show 

python -m zipapp app.pyz -o newapp.pyz [-p interpreter]
        PEP 461 -- Adding % formatting to bytes and bytearray
    3.6
        PEP 494
        PEP 498 -- Literal String Interpolation
             { <expression> <optional !s, !r, or !a> <optional : format specifier> }
        PEP 515 -- Underscores in Numeric Literals
        PEP 526 -- Syntax for Variable Annotations
            __annotations__
        PEP 525 -- Asynchronous Generators
            def func(): # a function returndef genfunc(): # a generator function yield 

async def coro(): # a coroutine function await smth()async def asyncgen(): # an asynchronous generator function await smth() yield 42
            *  types.AsyncGeneratorType -- type of asynchronous generator object. 
   *  sys.set_asyncgen_hooks() and sys.get_asyncgen_hooks() methods to set up asynchronous generators finalizers and iteration interceptors in event loops. 
   *  inspect.isasyncgen() and inspect.isasyncgenfunction() introspection functions. 
   *  New method for asyncio event loop: loop.shutdown_asyncgens(). 
   *  New collections.abc.AsyncGenerator abstract base class.
            async def ticker(delay, to): for i in range(to): yield i await asyncio.sleep(delay)async def run(): async for i in ticker(1, 10): print(i)import asyncioloop = asyncio.get_event_loop()try: loop.run_until_complete(run())finally: loop.close()
        PEP 530 -- Asynchronous Comprehensions
            *  {i async for i in agen()}; 
   *  [i async for i in agen()]; 
   *  {i: i ** 2 async for i in agen()}; 
   *  (i ** 2 async for i in agen()). 

 

result = [await fun() for fun in funcs]result = {await fun() for fun in funcs}result = {fun: await fun() for fun in funcs}result = [await fun() for fun in funcs if await smth]result = {await fun() for fun in funcs if await smth}result = {fun: await fun() for fun in funcs if await smth}result = [await fun() async for fun in funcs]result = {await fun() async for fun in funcs}result = {fun: await fun() async for fun in funcs}result = [await fun() async for fun in funcs if await smth]result = {await fun() async for fun in funcs if await smth}result = {fun: await fun() async for fun in funcs if await smth}
        PEP 506 -- Adding A Secrets Module To The Standard Library
        PEP 528 -- Change Windows console encoding to UTF-8
        PEP 529 -- Change Windows filesystem encoding to UTF-8
    3.7
        PEP 563: Postponed Evaluation of Annotations
            类型注释放在 __annotation__ 里， 推迟判断
        async and await are now reserved keywords.
        PEP 567 -- Context Variables
            ipython里好像每个交互都是独立的
        PEP 557 -- Data Classes
            @dataclass
                def dataclass(*, init=True, repr=True, eq=True, order=False, unsafe_hash=False, frozen=False)
            field
                def field(*, default=MISSING, default_factory=MISSING, repr=True,           hash=None, init=True, compare=True, metadata=None)
        importlib.resources
        PEP 553 -- Built-in breakpoint()
        PEP 562 -- Module __getattr__ and __dir__
            # lib.pyfrom warnings import warndeprecated_names = ["old_function", ...]def _deprecated_old_function(arg, other): ...def __getattr__(name): if name in deprecated_names: warn(f"{name} is deprecated", DeprecationWarning) return globals()[f"_deprecated_{name}"] raise AttributeError(f"module {__name__} has no attribute {name}")# main.pyfrom lib import old_function # Works, but emits the warning
            # lib/__init__.pyimport importlib__all__ = ['submod', ...]def __getattr__(name): if name in __all__: return importlib.import_module("." + name, __name__) raise AttributeError(f"module {__name__!r} has no attribute {name!r}")# lib/submod.pyprint("Submodule loaded")class HeavyClass: ...# main.pyimport liblib.submod.HeavyClass # prints "Submodule loaded"
        PEP 560 -- Core support for typing module and generic types
            class MyList: def __getitem__(self, index): return index + 1 def __class_getitem__(cls, item): return f"{cls.__name__}[{item.__name__}]"class MyOtherList(MyList): passassert MyList()[0] == 1assert MyList[int] == "MyList[int]"assert MyOtherList()[0] == 1assert MyOtherList[int] == "MyOtherList[int]
            class GenericAlias: def __init__(self, origin, item): self.origin = origin self.item = item def __mro_entries__(self, bases): return (self.origin,)class NewList: def __class_getitem__(cls, item): return GenericAlias(cls, item)class Tokens(NewList[int]): ...assert Tokens.__bases__ == (NewList,)assert Tokens.__orig_bases__ == (NewList[int],)assert Tokens.__mro__ == (Tokens, NewList, object)
        the insertion-order preservation nature of dict objects has been declared to be an official part of the Python language spec.
        new asyncio feature
            asyncio.run()
            asyncio.create_task()
                eq: asyncio.get_event_loop().create_task()
            loop.start_tls()
            loop.sock_recv_into()
            asyncio.current_task()
            asyncio.all_tasks()
            asyncio.get_running_loop()
            loop.sock_sendfile()
            Future.get_loop()
            Task.get_loop()
            Server.get_loop()
        PEP 564: New Time Functions With Nanosecond Resolution
        PEP 538: Legacy C Locale Coercion
        PEP 540: Forced UTF-8 Runtime Mode
        PEP 552: Hash-based .pyc Files
        PEP 565, improved DeprecationWarning handling
        PEP 539, new C API for thread-local storage
    3.8
        PEP 569
        PEP 572 -- Assignment Expressions
            # Handle a matched regex
if (match := pattern.search(data)) is not None:
    # Do something with match

# A loop that can't be trivially rewritten using 2-arg iter()
while chunk := file.read(8192):
   process(chunk)

# Reuse a value that's expensive to compute
[y := f(x), y**2, y**3]

# Share a subexpression between a comprehension filter clause and its output
filtered_data = [y for x in data if (y := f(x)) is not None]
        PEP 570 -- Python Positional-Only Parameters
            /， *

```
{% endsimplemindmap %}
