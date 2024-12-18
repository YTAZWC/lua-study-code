-- class_create_test.lua

-- 创建一个类
local Animal = {
    name = "no_name",
    age = 0
};

-- 创建无参构造器
function Animal:new() -- 隐藏参数 self
    -- 创建一个空表
    local a = {};
    -- 绑定匿名元表 并重写元方法
    setmetatable(a, {
        __index = self, -- 新表中没有的 key 会在原始表中查找
    });

    return a; -- 返回新表
end

-- 创建有参构造器 - 参数是 table 类型
-- function Animal:new(obj)
--     local a = {};
--     if type(obj) == "table" then
--         a = obj;
--     end
--     setmetatable(a, { __index = self });
--     return a;
-- end

-- 尝试创建对象
local animal_1 = Animal:new();
local animal_2 = Animal:new();

-- 验证是否为两个不同的对象
print(animal_1);
print(animal_2);

-- 进行对象属性赋值
animal_1.name = "Tom";
animal_1.age = 8;
animal_1.type = "猫";


