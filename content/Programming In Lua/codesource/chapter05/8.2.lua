function concat_string_tbl (tbl)
    return table.concat(tbl)
end

a_tbl = {}

for i = 1, 100000 do
    a_tbl[i] = "hello "
end

concat_string_tbl(a_tbl)
