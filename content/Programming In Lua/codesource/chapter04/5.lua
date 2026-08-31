function remove (s, start_pos, length)
    local s_sub1 = string.sub(s, 1, start_pos-1) or ""
    local s_sub2 = string.sub(s, start_pos + length, -1) or ""
    return s_sub1 .. s_sub2
end

print(remove("hello world", 7, 4))
