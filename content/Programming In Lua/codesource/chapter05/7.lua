function insert_all_elements_from_a_to_b (a, b, pos)
    table.move(b, pos, #b, pos+#a)
    table.move(a, 1, #a, pos, b)
end

a_tbl = {1, 2, nil, 4, 5}
b_tbl = {1, 2, 3, 4, 5, 6, nil, 8}

insert_all_elements_from_a_to_b(a_tbl, b_tbl, 2)

for k, v in pairs(b_tbl) do
    print(k .. ": " .. v)
end
