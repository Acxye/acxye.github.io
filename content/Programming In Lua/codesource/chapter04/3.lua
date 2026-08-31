function insert (s, pos, insert_string)
    if pos > #s + 1 then
        print("insert pos should be smaller than (len_of_string + 1)")
    elseif pos == #s + 1 then
        return s .. insert_string
    else
        local s_sub1 = string.sub(s, 1, pos-1) or ""
        local s_sub2 = string.sub(s, pos, -1) or ""
        return s_sub1 .. insert_string .. s_sub2
    end
end

print(insert("hello world", 1, "start: "))
print(insert("hello world", 7, "small "))
print(insert("hello world", 12, "small "))
