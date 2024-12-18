-- table_pack.lua

-- 使用table的pack函数
local t = table.pack("apple", "banana", "orange")

-- 使用concat查看table数组
print(table.concat(t, ", "))
-- 输出t数组的长度
print("数组长度: " .. t.n)