-- meta_index_test_2.lua

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

print("重写__index方法前,访问 emp[6]: ")
print(emp[6]);

-- 再定义一张表 用于重写 __index 方法
local other = {};
other[6] = "天津";
other[7] = "西安";

-- 重写 __index 方法 是一张表
meta.__index = other;

print("重写__index方法后,访问 emp[6]: ")
print(emp[6])

-- 即会在 重写的__index表 指定位置获取值