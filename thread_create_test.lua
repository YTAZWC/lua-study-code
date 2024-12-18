-- thread_create_test.lua

-- 创建一个协同线程实例
-- 接收参数 function
crt = coroutine.create(
    function (a, b)
        print(a, b, a + b);
        -- 获取正在运行的协同线程实例，thread类型
        local tr = coroutine.running();
        -- 输出获取的协同线程实例
        print(tr);
        print(type(tr)); -- 获取协同线程的类型
        print(coroutine.status(crt)); -- 查看协同线程的状态
        -- 将协同线程实例 挂起
        coroutine.yield();
        -- 挂起后 后续语句不会执行
        -- 当重新启动后 后续语句才会运行
        print("协同线程再次被启动!!!");
    end
);

-- 启动协同线程
coroutine.resume(crt, 3, 5); -- 函数返回值为内置函数返回值或启动线程的状态
-- 主线程查看协程类型
print("main-thread- " .. type(crt));
-- 在主线程查看线程实例的状态
print("main-thread- " .. coroutine.status(crt));

-- 继续启动协同线程 第二次启动可以不必再传参
coroutine.resume(crt);
-- 再次查看状态
print("main-thread- " .. type(crt));