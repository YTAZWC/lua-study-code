-- meta_to_string_test.lua

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

meta.__tostring  = 
    function(tab)
        local str = "";
        for k, v in pairs(tab) do
            str = str .. ", " .. k .. ":" .. v;
        end
        return str;
    end

print(emp);
