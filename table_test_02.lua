-- table_test_02.lua

-- 定义一个map
map = { name = "张三", age = 23, depart = "销售部" }

-- 访问方式一：通过下标
map["gender"] = "男"    -- 使用下标时需要给key加上双引号
print(map["name"])
print(map["gender"])

-- 访问方式二：点号方式操作
map.office = "2nd floor"
print(map.age)
print(map.office)

print()

-- 通过赋值来定义map
a = "ytazwc"
b = 3
c = 5
-- 定义map，key为[]中的表达式
arr = {
    ["emp_"..a] = true,
    [b+c] = "Hello",
    ["hi"] = 123
}
print(arr.emp_ytazwc)
print(arr[8])   -- 数值型的key 需要使用[]来表示并访问
print(arr.hi)
