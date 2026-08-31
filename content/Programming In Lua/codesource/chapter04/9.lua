function ispali (s)
    local a, b = utf8.len(s) // 2, utf8.len(s) % 2
    local res = true

    local s_tbl = {}
    local counter = 1
    for i, v in utf8.codes(s) do 
        s_tbl[counter] = v
        counter = counter + 1
    end

    for i = 1, a do
        if s_tbl[i] ~= s_tbl[2*a+b-i+1] then
            res = false
            break
        end
    end
        
    return res
end

print(ispali("天连水尾水连天"))
print(ispali("连水尾水连天"))
