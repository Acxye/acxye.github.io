function copy_stdin_to_stdout_in_chunks_of_8KB ()
    local stdin = io.input()
    local stdout = io.output()
    
    while true do
        local bytes = stdin:read(2^13)

        if not bytes then break end 
        
        stdout:write(bytes)
    end
end

copy_stdin_to_stdout_in_chunks_of_8KB()
