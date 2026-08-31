function concat_table (table1, table2)
    local concated_table = {}
    table.move(table1, 1, #table1, 1, concated_table)
    table.move(table2, 1, #table2, #table1+1, concated_table)
    return concated_table
end

function add_ele_to_every_subtable (ele, tablex)
    for k, _ in pairs(tablex) do 
        table.insert(tablex[k], ele)
    end
    return tablex
end

function c (array, n, m)
    if m == 0 then 
        return {{}} 
    elseif n == m then 
        return {array} 
    else
        local sub_array = table.move(array, 2, #array, 1, {})
        local res = concat_table(
            add_ele_to_every_subtable(array[1], c(sub_array, n-1, m-1)),
            c(sub_array, n-1, m)
        )
        return res 
    end

end

a = {1, 2, 3, 4, 5, 6}
n = #a 
m = 5 
res = c(a, n, m)


for _, v in pairs(res) do
    for _, sub_v in pairs(v) do
        io.write(sub_v .. " ")
    end
    io.write("\n")
end
