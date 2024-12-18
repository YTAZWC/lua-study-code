-- object_create_test.lua


-- 创建名为 animal 的对象
local animal = {
    name = "Tom",
    age = 5
};
-- 为对象添加方法
-- animal.bark = function(voice)
--     print(animal.name .. "在" .. voice .. "叫");
-- end
-- 解决 标红 行的问题: 方式一
-- animal.bark = function(self, voice)
--     print(self.name .. "在" .. voice .. "叫");
-- end
-- 解决 标红 行的问题：方式二
function animal:bark(voice) -- 这种函数定义方式，自带 self
    print(self.name .. "在" .. voice .. "叫");
end

-- 直接调用对象的方法
-- animal.bark("喵喵");
animal.bark(animal, "喵喵");
animal:bark("喵喵");    -- 这种函数调用方式 自带 self

local animal_2 = animal; -- 两个animal指向的是同一个对象
animal = nil;            -- 消除 animal 这个指针

-- 此时会出现异常，因为在 bark 方法中使用了已经为空的 animal
-- animal_2.bark("旺旺");
animal_2.bark(animal_2, "旺旺");
animal_2:bark("旺旺");
