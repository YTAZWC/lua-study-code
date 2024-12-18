-- table_test_01.lua

-- 定义一个数组
cities = {"北京", "上海", "广州"}

-- 直接添加元素到数组中
cities[4] = "长沙"

-- 通过 数值for循环 遍历数组
for i = 1, 4 do
    print("cities[" .. i .. "] = " .. cities[i])
end

-- 测试数组是否存在下标索引为0的元素
print(cities[0])    -- 结果为 nil 

-- 定义二维数组前 先声明为一维空数组
arr = {}

-- 利用 for 循环定义成二维数组
for i = 1, 3 do
    arr[i] = {}
    for j = 1, 2 do
        arr[i][j] = i * j
    end
end

-- 利用二重循环遍历二维数组
for i = 1, 3 do
    for j = 1, 2 do
        print("arr[" .. i .. "][" .. j .. "] = " .. arr[i][j])
    end
end
