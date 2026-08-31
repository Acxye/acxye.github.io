function read_last_line (file_name)
    local f = io.open(file_name)
    local f_size = f:seek("end")
    local res = {}
    local new_line_chr_count = 0
    
    for i = 1, f_size do
        f:seek("end", -i)
        local now_chr = f:read(1)

        if i == 1 and now_chr == "\n" then
            goto continue
        end

        if now_chr == "\n" then
            new_line_chr_count = new_line_chr_count + 1
        end 

        if new_line_chr_count < 1 then
            table.insert(res, now_chr)
        else
            break
        end 

        ::continue::
    end

    for i = #res, 1, -1 do
        io.write(res[i])
    end
end

read_last_line("test1.txt")
