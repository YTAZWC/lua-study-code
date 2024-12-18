-- table_test_04.lua

-- 按照一定规范定义混合结构

emps = {
   { name="张三", age = 23 }, 
   { name="李四", age = 24 }, 
   { name="王五", age = 25 }, 
   { name="赵六", age = 27 } 
}

-- 访问
for i = 1, 4 do
    print(emps[i].name .. " : " .. emps[i].age)
end

