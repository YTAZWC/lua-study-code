-- table_insert.lua

-- 先定义一个数组
local cities = {
    "北京",
    "上海",
    "长沙"
}

-- 调用insert插入元素
table.insert(cities, 2, "广州")
print(table.concat(cities, ", "))
table.insert(cities, "天津")
print(table.concat(cities, ", "))
