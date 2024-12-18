-- table_test_03.lua

-- 混合结构 table
emp = {
    "北京",
    name = "张三",
    age = 23,
    "上海",
    depart = "销售部",
    "长沙",
    "深圳"
}

-- 访问数组形式
print(emp[1])
print(emp[2])
print(emp[3])
print(emp[4])

-- 访问map形式
print(emp.name)
print(emp.age)
print(emp.depart)


