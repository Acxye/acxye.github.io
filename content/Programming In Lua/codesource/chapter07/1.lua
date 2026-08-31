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
        
        for line in io.open(file_name_1):lines() do
            table.insert(lines, line)
        end
        
        table.sort(lines)

        local f = io.open(file_name_2, "w")
        for _, line in ipairs(lines) do
            f:write(line .. "\n")
        end
    end
end

-- sort_file_lines()
-- sort_file_lines("test1.txt")
sort_file_lines("test1.txt", "test2.txt")
