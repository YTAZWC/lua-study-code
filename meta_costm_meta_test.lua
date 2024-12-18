-- meta_custom_meta_test.lua

-- 引入元表
local meta = require "meta.custom_meta";

local emp = {
    "北京",
    name = "张三",
    age = 23,
    "上海",
    depart = "销售部",
    "长沙",
    "深圳"
};

-- 链接元表
setmetatable(emp, meta);

-- 执行元表中已经重写过的元方法
local add_emp = emp + 5;
print(emp);
print(add_emp);

-- 可以继续扩展元表 添加自己需要的方法
meta.__index = function (tab, key)
    print("访问的值不存在!!!");
    return "返回值!!!";
end

print(emp.x);
