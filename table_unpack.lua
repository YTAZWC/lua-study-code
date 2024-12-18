-- table_unpack.lua

local arr = {
    "北京",
    "广州",
    "上海", 
    "长沙"
}

-- 调用unpack解包
local a, b, c, d = table.unpack(arr);
print(a, b, c, d)
