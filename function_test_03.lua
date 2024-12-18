-- function_test_03.lua

-- 定义一个返回多个值的函数
function f(a, b)
    local sum = a+b
    local mul = a-b
    return sum, mul
end

-- 一次接收两个值
m, n = f(3, 5)

print(m, n)
