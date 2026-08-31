function insert (s, pos, insert_string)
    if pos > utf8.len(s) + 1 then
        print("insert pos should be smaller than (len_of_string + 1)")
    elseif pos == utf8.len(s) + 1 then
        return s .. insert_string
    else
        local s_sub1 = string.sub(s, 1, utf8.offset(s, pos) - 1) or ""
        local s_sub2 = string.sub(s, utf8.offset(s, pos), -1) or ""
        return s_sub1 .. insert_string .. s_sub2
    end
end

print(insert("ação", 5, "!"))
print(insert("ação", 2, "!"))
print(insert("ação", 1, "!"))
