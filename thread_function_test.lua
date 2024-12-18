-- thread_function_test.lua

-- 创建一个协同函数
cf = coroutine.wrap(
    function (a, b)
        print(a, b);

        -- 获取当前协同函数创建的协同线程
        local tr = coroutine.running();
        print("tr 的类型是: " .. type(tr));

        -- 挂起当前的协同线程
        coroutine.yield(a-b, a / b);

        print("协同线程再次启动!!!");

        return a+b, a*b;
    end
);
-- 调用协同函数
local r1, r2 = cf(3, 5);
print(type(cf)); -- 协同函数类型
print(r1, r2);

r1, r2 = cf(3, 5); -- 再次启动协同函数 此时的参数是可省略的
print(r1, r2);

-- 另一种重启协同线程方式
-- 将协同函数内的协同线程返回 并接收
-- 然后再次调用协同线程的 resume 方法