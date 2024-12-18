-- table_remove.lua

local cities = {
    "北京",
    "上海",
    "长沙",
    "广州",
    "南京"
}

table.remove(cities, 4);
print(table.concat(cities, ", "))

table.remove(cities)
print(table.concat(cities, ", "))