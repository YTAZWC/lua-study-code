-- iterators_test.lua

local emp = {
    "北京",
    name = "张三",
    age = 23,
    "上海",
    depart = "销售部",
    "长沙",
    "深圳"
}
-- 遍历 emp 中的所有数组元素
for i, v in ipairs(emp) do
    print(i, v)
end

print("=================================")

-- 遍历 emp 中的所有元素
-- 是先输出数组， 再输出key-value
for k, v in pairs(emp) do
    print(k, v)
end