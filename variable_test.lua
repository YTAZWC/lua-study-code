-- variable_test.lua

-- 定义一个局部变量
local x = 3

-- 定义一个函数
function f()
    -- 全局变量
    y = 5
    -- 局部变量
    local z = 8
    -- 尝试访问局部变量
    -- 因为 x 在函数外部全局代码块中定义 类似于全局变量
    print("x = " .. x)  -- lua 中通过 .. 进行字符串的连接
end

-- 调用函数
f()

-- 访问全局变量y
print("y = " .. y)
-- 访问局部变量z
-- print("z = " .. z)

y = "北京"
print("重新赋值 y = " .. y)

