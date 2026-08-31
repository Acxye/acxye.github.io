function remove (s, start_pos, length)
    local s_sub1 = string.sub(s, 1, utf8.offset(s, start_pos) - 1) or ""
    local s_sub2 = string.sub(s, utf8.offset(s, start_pos + length), -1) or ""
    return s_sub1 .. s_sub2
end

print(remove("ação", 2, 2))
print(remove("ação", 2, 3))
print(remove("ação", 1, 4))
