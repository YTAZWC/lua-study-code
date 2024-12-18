-- meta_new_index_test.lua

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

-- 重写__newindex函数 无返回值
function meta.__newindex(tab, key, value)
    print("新增的 key: " .. key .. ", value: " .. value);
    rawset(tab, key, value);    -- 将赋值真正写入到原始表中
end
-- 赋值
emp.x = "天津";
-- nil 无论重写函数是否有返回值 值均为 nil
-- 因为重写函数中 没有将新加入的值 真正的赋值到指定的位置上
-- 可以使用 rawset(tab, key, value) 来真正写入到原始表中
print(emp.x);


