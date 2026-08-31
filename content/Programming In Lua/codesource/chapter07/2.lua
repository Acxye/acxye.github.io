function sort_file_lines (file_name_1, file_name_2)
    if file_name_1 == nil and file_name_2 == nil then 
        local lines = {}
        for line in io.lines() do
            table.insert(lines, line)
        end
        
        table.sort(lines)
        
        for _, line in ipairs(lines) do
            io.write(line.."\n")
        end
    elseif file_name_2 == nil then
        local lines = {}
        for line in io.open(file_name_1):lines() do
            table.insert(lines, line)
        end
        
        table.sort(lines)
        
        for _, line in ipairs(lines) do
            io.write(line.."\n")
        end
    else
        local lines = {}
        local f = nil
        
        for line in io.open(file_name_1):lines() do
            table.insert(lines, line)
        end
        
        table.sort(lines)

        local file_exist = io.popen(string.format("test -f %s && echo $?", file_name_2)):read("n")
        -- print(file_exist)
        if file_exist == 0 then 
            print(string.format("file %s already exists, overwrite it? 1/0 (1 for Y, 0 for N)", file_name_2))
            local overwrite_tag = io.read("n")
            io.read()
            if overwrite_tag == 0 then 
                print("input a new file (won't check do new_file exists)")
                file_name_2 = io.read()
                file_name_2 = string.gsub(file_name_2, "%s+", "")
            end
        end

        local f = io.open(file_name_2, "w")
        for _, line in ipairs(lines) do
            f:write(line .. "\n")
        end
        f:close()
    end
end

-- sort_file_lines()
-- sort_file_lines("test1.txt")
sort_file_lines("test1.txt", "test2.txt")
