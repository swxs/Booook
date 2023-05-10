# version

------

- [version](#version)
  - [python2.0](#python20)
  - [python2.6](#python26)
  - [python3.5](#python35)
  - [python3.6](#python36)
  - [python3.7](#python37)
  - [python3.8](#python38)
  - [python3.9](#python39)
  - [python3.10](#python310)

------


## python2.0
- [PEP 0 -- Index of Python Enhancement Proposals (PEPs)](https://www.python.org/dev/peps/)
## python2.6
- [PEP 361 -- Python 2.6 and 3.0 Release Schedule](https://www.python.org/dev/peps/pep-0361/)
- [PEP 352 -- Required Superclass for Exceptions](https://www.python.org/dev/peps/pep-0352/)
    之前居然是个类就可以被raise...
- [PEP 358 -- The "bytes" Object](https://www.python.org/dev/peps/pep-0358/)
- [PEP 366 -- Main module explicit relative imports](https://www.python.org/dev/peps/pep-0366/)
    ```py
    if __name__ == "__main__" and __package__ is None: 
        __package__ = "expected.package.name"
    ```
- [PEP 370 -- Per user site-packages directory](https://www.python.org/dev/peps/pep-0370/)
- [PEP 3112 -- Bytes literals in Python 3000](https://www.python.org/dev/peps/pep-3112/)
- [PEP 3127 -- Integer Literal Support and Syntax](https://www.python.org/dev/peps/pep-3127/)
- [PEP 371 -- Addition of the multiprocessing package to the standard library](https://www.python.org/dev/peps/pep-0371/)
## python3.5
- [PEP 478 -- Python 3.5 Release Schedule](https://www.python.org/dev/peps/pep-0478/)
- [PEP 492 -- Coroutines with async and await syntax](https://www.python.org/dev/peps/pep-0492/)
   *  New syntax for defining coroutines: async def and new await keyword. 
   *  New __await__ method for Future-like objects, and new tp_as_async.am_await slot in PyTypeObject. 
   *  New syntax for asynchronous context managers: async with. And associated protocol with __aenter__ and __aexit__ methods. 
   *  New syntax for asynchronous iteration: async for. And associated protocol with __aiter__, __aexit__ and new built-in exception StopAsyncIteration. New tp_as_async.am_aiter and tp_as_async.am_anext slots in PyTypeObject. 
   *  New AST nodes: AsyncFunctionDef, AsyncFor, AsyncWith, Await. 
   *  New functions: sys.set_coroutine_wrapper(callback), sys.get_coroutine_wrapper(), types.coroutine(gen), inspect.iscoroutinefunction(func), inspect.iscoroutine(obj),inspect.isawaitable(obj), inspect.getcoroutinestate(coro), and inspect.getcoroutinelocals(coro). 
   *  New CO_COROUTINE and CO_ITERABLE_COROUTINE bit flags for code objects. 
   *  New ABCs: collections.abc.Awaitable, collections.abc.Coroutine, collections.abc.AsyncIterable, and collections.abc.AsyncIterator. 
   *  C API changes: new PyCoro_Type (exposed to Python as types.CoroutineType) and PyCoroObject.PyCoro_CheckExact(*o) to test if o is a native coroutine.
- [PEP 465 -- A dedicated infix operator for matrix multiplication](https://www.python.org/dev/peps/pep-0465/)
- [PEP 448 -- Additional Unpacking Generalizations](https://www.python.org/dev/peps/pep-0448/)
- [PEP 484 -- Type Hints](https://www.python.org/dev/peps/pep-0484/)
- [PEP 441 Improving Python ZIP Application Support.](https://www.python.org/dev/peps/pep-0441/)
    ```sh
        python 
        -m zipapp directory [options] 
        -o archive / --output archive 
        -p interpreter / --python interpreter 
        --show 
    ```
- [PEP 461 -- Adding % formatting to bytes and bytearray](https://www.python.org/dev/peps/pep-0461/)
## python3.6
- [PEP 494 -- Python 3.6 Release Schedule](https://www.python.org/dev/peps/pep-0494/)
- [PEP 498 -- Literal String Interpolation](https://www.python.org/dev/peps/pep-0498/)
    ```
    { <expression> <optional !s, !r, or !a> <optional : format specifier> }
    ```
- [PEP 515 -- Underscores in Numeric Literals](https://www.python.org/dev/peps/pep-0515/)
- [PEP 526 -- Syntax for Variable Annotations](https://www.python.org/dev/peps/pep-0526/)
- [PEP 525 -- Asynchronous Generators](https://www.python.org/dev/peps/pep-0525/)
    ```py
    def func(): # a function return
        pass

    def genfunc(): # a generator function
        yield

    async def coro(): # a coroutine function 
        await smth()

    async def asyncgen(): # an asynchronous generator function 
        yield 42
    ```
   *  types.AsyncGeneratorType -- type of asynchronous generator object. 
   *  sys.set_asyncgen_hooks() and sys.get_asyncgen_hooks() methods to set up asynchronous generators finalizers and iteration interceptors in event loops. 
   *  inspect.isasyncgen() and inspect.isasyncgenfunction() introspection functions. 
   *  New method for asyncio event loop: loop.shutdown_asyncgens(). 
   *  New collections.abc.AsyncGenerator abstract base class.
    ```py
    async def ticker(delay, to): 
        for i in range(to): 
            yield i 
            await asyncio.sleep(delay)
    async def run(): 
        async for i in ticker(1, 10): 
            print(i)
            
    import asyncio
    loop = asyncio.get_event_loop()
    try: 
        loop.run_until_complete(run())
    finally: 
        loop.close()
    ```
- [PEP 530 -- Asynchronous Comprehensions](https://www.python.org/dev/peps/pep-0530/)
   *  {i async for i in agen()}; 
   *  [i async for i in agen()]; 
   *  {i: i ** 2 async for i in agen()}; 
   *  (i ** 2 async for i in agen()). 

   *  result = [await fun() for fun in funcs]
   *  result = {await fun() for fun in funcs}
   *  result = {fun: await fun() for fun in funcs}
   *  result = [await fun() for fun in funcs if await smth]
   *  result = {await fun() for fun in funcs if await smth}
   *  result = {fun: await fun() for fun in funcs if await smth}
   *  result = [await fun() async for fun in funcs]
   *  result = {await fun() async for fun in funcs}
   *  result = {fun: await fun() async for fun in funcs}
   *  result = [await fun() async for fun in funcs if await smth]
   *  result = {await fun() async for fun in funcs if await smth}
   *  result = {fun: await fun() async for fun in funcs if await smth}
- [PEP 506 -- Adding A Secrets Module To The Standard Library](https://www.python.org/dev/peps/pep-0506/)
- [PEP 528 -- Change Windows console encoding to UTF-8](https://www.python.org/dev/peps/pep-0528/)
- [PEP 529 -- Change Windows filesystem encoding to UTF-8](https://www.python.org/dev/peps/pep-0529/)
## python3.7
- [PEP 537 -- Python 3.7 Release Schedule](https://www.python.org/dev/peps/pep-0537/)
- [PEP 563 -- Postponed Evaluation of Annotations](https://www.python.org/dev/peps/pep-0563/)
    类型注释放在 __annotation__ 里， 推迟判断
    async and await are now reserved keywords.
- [PEP 567 -- Context Variables](https://www.python.org/dev/peps/pep-0567/)
    ipython里好像每个交互都是独立的
- [PEP 557 -- Data Classes](https://www.python.org/dev/peps/pep-0557/)
    ```
    @dataclass
    def dataclass(*, init=True, repr=True, eq=True, order=False, unsafe_hash=False, frozen=False)
    ```
- [PEP 553 -- Built-in breakpoint()](https://www.python.org/dev/peps/pep-0553/)
- [PEP 562 -- Module __getattr__ and __dir__](https://www.python.org/dev/peps/pep-0562/)
    ```py
    # lib.py

    from warnings import warn

    deprecated_names = ["old_function", ...]

    def _deprecated_old_function(arg, other):
        ...

    def __getattr__(name):
        if name in deprecated_names:
            warn(f"{name} is deprecated", DeprecationWarning)
            return globals()[f"_deprecated_{name}"]
        raise AttributeError(f"module {__name__} has no attribute {name}")

    # main.py

    from lib import old_function  # Works, but emits the warning
    ```

    ```py
    # lib/__init__.py

    import importlib

    __all__ = ['submod', ...]

    def __getattr__(name):
        if name in __all__:
            return importlib.import_module("." + name, __name__)
        raise AttributeError(f"module {__name__!r} has no attribute {name!r}")

    # lib/submod.py

    print("Submodule loaded")
    class HeavyClass:
        ...

    # main.py

    import lib
    lib.submod.HeavyClass  # prints "Submodule loaded"
    ```
- [PEP 560 -- Core support for typing module and generic types](https://www.python.org/dev/peps/pep-0560/)
    ```py
    class MyList:
        def __getitem__(self, index):
            return index + 1
        def __class_getitem__(cls, item):
            return f"{cls.__name__}[{item.__name__}]"

    class MyOtherList(MyList):
        pass

    assert MyList()[0] == 1
    assert MyList[int] == "MyList[int]"

    assert MyOtherList()[0] == 1
    assert MyOtherList[int] == "MyOtherList[int]"
            

    class GenericAlias:
        def __init__(self, origin, item):
            self.origin = origin
            self.item = item
        def __mro_entries__(self, bases):
            return (self.origin,)

    class NewList:
        def __class_getitem__(cls, item):
            return GenericAlias(cls, item)

    class Tokens(NewList[int]):
        ...

    assert Tokens.__bases__ == (NewList,)
    assert Tokens.__orig_bases__ == (NewList[int],)
    assert Tokens.__mro__ == (Tokens, NewList, object)
    ```
- [PEP 564 -- New Time Functions With Nanosecond Resolution](https://www.python.org/dev/peps/pep-0564/)
- [PEP 538 -- Legacy C Locale Coercion](https://www.python.org/dev/peps/pep-0538/)
- [PEP 540 -- Forced UTF-8 Runtime Mode](https://www.python.org/dev/peps/pep-0540/)
- [PEP 552 -- Hash-based .pyc Files](https://www.python.org/dev/peps/pep-0552/)
- [PEP 565 -- improved DeprecationWarning handling](https://www.python.org/dev/peps/pep-0565/)
- [PEP 539 -- new C API for thread-local storage](https://www.python.org/dev/peps/pep-0539/)
## python3.8
- [PEP 569 -- Python 3.8 Release Schedule](https://www.python.org/dev/peps/pep-0569/)
- [PEP 572 -- Assignment Expressions](https://www.python.org/dev/peps/pep-0572/)
    ```py
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
    ```
- [PEP 570 -- Python Positional-Only Parameters](https://www.python.org/dev/peps/pep-0570/)
    ```
    position_only, /，position_and_keyword, *, keyword_only
    ```
- [PEP 578 -- Python Runtime Audit Hooks](https://www.python.org/dev/peps/pep-0578/)
- [PEP 587 -- Python Initialization Configuration](https://www.python.org/dev/peps/pep-0587/)
## python3.9
- [PEP 596 -- Python 3.9 Release Schedule](https://www.python.org/dev/peps/pep-0596/)
- [PEP 573 -- Module State Access from C Extension Methods](https://www.python.org/dev/peps/pep-0573/)
- [PEP 584 -- Add Union Operators To dict](https://www.python.org/dev/peps/pep-0584/)
- [PEP 585 -- Type Hinting Generics In Standard Collections](https://www.python.org/dev/peps/pep-0585/)
- [PEP 593 -- Flexible function and variable annotations](https://www.python.org/dev/peps/pep-0593/)
- [PEP 614 -- Relaxing Grammar Restrictions On Decorators](https://www.python.org/dev/peps/pep-0614/)
- [PEP 617 -- New PEG parser for CPython](https://www.python.org/dev/peps/pep-0617/)
## python3.10
- [PEP 619 -- Python 3.10 Release Schedule](https://www.python.org/dev/peps/pep-0619/)
