-- custom_meta.lua

-- 自定义一个元表

local custom_meta = {
    __add =
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
    end,
    
    __tostring =
    function(tab)
        local str = "";
        for k, v in pairs(tab) do
                str = str .. " " .. k .. ":" .. v;
        end
        return str;
    end
}

return custom_meta;