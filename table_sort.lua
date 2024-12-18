-- table_sort.lua

local strs = {"b", "a", "d", "x", "s", "t"}

-- 调用排序-默认排序
table.sort(strs)

print(table.concat(strs, ", "))


-- 使用自定义函数进行排序-倒叙
table.sort(strs, 
function (a, b)
    return a > b
end
)
print(table.concat(strs, ", "))

