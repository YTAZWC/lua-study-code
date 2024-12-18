-- class_extend_test.lua

-- 先创建一个 Animal 类
local Animal = {
    name = "no_name",
    age = 0
};

-- 创建有参构造器
function Animal:new(obj) -- 隐藏参数 self
    -- 创建一个空表
    local a = obj or {};
    -- 绑定匿名元表 并重写元方法
    setmetatable(a, {
        __index = self, -- 新表中没有的 key 会在原始表中查找
    });

    return a; -- 返回新表
end

-- 创建 Animal 的子类
local Cat = Animal:new({ type = "波斯猫" });
-- 子类属性
Cat.eyes = "蓝色";
-- 创建子类 实例
local tomcat = Cat:new();
tomcat.name = "Tom";

print(tomcat.name);
print(tomcat.eyes);
print(tomcat.type);
