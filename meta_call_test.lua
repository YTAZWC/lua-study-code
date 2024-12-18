-- meta_call_test.lua

local emp = {
    "北京",
    name = "张三",
    age = 23,
    "上海",
    depart = "销售部",
    "长沙",
    "深圳"
};

-- 将原始表与匿名元表相关联
setmetatable(emp, {
    __call = function (tab, num, str)
        -- 遍历 table
        for k, v in pairs(tab) do
            if type(v) == "number" then
                tab[k] = v + num;
            elseif type(v) == "string" then
                tab[k] = v .. str;
            end
        end
        return tab;
    end
})

local call_emp = emp(5, "-hello");
for k, v in pairs(call_emp) do
    print(k .. ":" .. v);
end