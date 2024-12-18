-- meta_new_index_test_2.lua

local emp = {
    "北京",
    name = "张三",
    age = 23,
    "上海",
    depart = "销售部",
    "长沙",
    "深圳"
};

-- 声明元表 并绑定一张表
local meta = {};
setmetatable(emp, meta);

-- 定义普通表 用于重写 newindex
local other = {};
meta.__newindex = other;    -- 作用：咱存新增加的数据

-- 此时新添加的元素 会添加到 用于重写__newindex的表 即other中
emp.x = "新添加的元素"

print(emp.x);
print(other.x);
