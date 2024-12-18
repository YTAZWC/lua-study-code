-- 声明一个模块 rectangle 矩形
rectangle = {}

-- 模块变量
rectangle.pi = 3.14

-- 模块函数

-- 获取周长
function rectangle.getPerimeter(a, b)
    return (a + b) * 2
end

-- 以匿名函数方式为模块添加一个函数
rectangle.getArea =
function(a, b)
    return a * b
end

-- 定义与模块无关的内容
-- 定义一个全局变量
goldenRatio = 0.618

-- 定义局部函数 求圆的面积
local function circularArea(r)
    return rectangle.pi * r * r
end

-- 定义一个全局函数 求矩形的最大圆面积
function maxCircularArea(a, b)
    local r = math.min(a, b)
    return circularArea(r)
end

-- 返回模块
return rectangle
