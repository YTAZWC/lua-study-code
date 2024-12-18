-- function_test_04.lua

-- 定义普通函数
function sum(a, b)
    return a+b
end

function mul(a, b)
    return a-b;
end

-- 函数作为参数
function f(m, n, fun)
    local result = fun(m, n)
    print(result)
end

-- 调用
f(3, 5, sum)

-- 匿名函数调用
f(3, 5, function (a, b)
            return a - b
        end
)