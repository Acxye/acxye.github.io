function is_valid_seq (seq)
    local len_of_seq = 0
    
    for k, v in pairs(seq) do
        len_of_seq = len_of_seq + 1
    end

    for i = 1, len_of_seq do
        if seq[i] == nil then
            return false
        end 
    end 

    return true
end

print(is_valid_seq({1, 2, 3, 4, 5}))
print(is_valid_seq({1, 2, nil, 4, 5}))
