-- module_rectangle_test.lua

-- 引入模块
local rectangle = require "modules.rectangle"

-- 直接访问模块
-- 模块属性
print(rectangle.pi)

-- 模块方法
print(rectangle.getPerimeter(3, 5)) -- 周长
print(rectangle.getArea(3, 5))

