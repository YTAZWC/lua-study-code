-- thread_create_test_2.lua

crt = coroutine.create(
    function (a, b)
        print(a, b);
        -- 将当前协程挂起 并携带两个返回值
        coroutine.yield(a * b, a / b);
        print("协程再次运行!!!");
        -- 返回两个值
        return a+b, a-b;
    end
);

-- 接收参数：启动状态-是否成功，返回值1，返回值2
local success, result_1, result_2 = coroutine.resume(crt, 12, 3);
print(success, result_1, result_2);

-- 继续执行
success, result_1, result_2 = coroutine.resume(crt, 12, 3);
print(success, result_1, result_2);
