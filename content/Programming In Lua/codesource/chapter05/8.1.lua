function concat_string_tbl (tbl)
    local res = ""
    for k, v in ipairs(tbl) do
        res = res .. v
    end

    return res
end

a_tbl = {}

for i = 1, 100000 do
    a_tbl[i] = "hello "
end

concat_string_tbl(a_tbl)
