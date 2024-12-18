-- meta_index_test.lua

-- 声明一个元表
local meta = {};

-- 声明一个普通的 table 表
local emp = {
    "北京",
    nil,
    name = "张三",
    age = 23,
    "上海",
    depart = "销售部",
    "长沙",
    "深圳"
};

-- 设置 emp 的元表为 meta
setmetatable(emp, meta);

-- 重写 __index 方法
-- 使用匿名函数进行重写
meta.__index =
    function(tab, key) -- tab 表   key 对应索引或key
        return "该 [" .. key .. "] 访问的值不存在";
    end

print(emp.x);
-- 注意 emp[2] 位置的值为 nil 但是会调用元方法
print(emp[2]);