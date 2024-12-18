-- meta_add_test.lua

local emp = {
    "北京",
    name = "张三",
    age = 23,
    "上海",
    depart = "销售部",
    "长沙",
    "深圳"
};

local meta = {}; -- 元表
setmetatable(emp, meta);

meta.__add = 
    function(tab, num)
        -- 遍历处理tab中的元素
        for k, v in pairs(tab) do
            if type(v) == "number" then
                tab[k] = v + num; -- 数值型 算术元算
            elseif type(v) == "string" then
                tab[k] = v .. num; -- 字符类型 拼接
            end
        end
        return tab; -- 修改好的tab
    end

local emp_add = emp + 5;
for k, v in pairs(emp_add) do
    print(k .. " : " .. v);
end
