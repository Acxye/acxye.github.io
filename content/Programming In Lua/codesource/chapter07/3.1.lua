function copy_stdin_to_stdout_byte_by_byte ()
    local f = io.input()
    local n = f:seek("end")
    f:seek("set")

    for i = 1, n do 
        io.output():write(f:read(1))
        f:seek("set", i)
    end
end

copy_stdin_to_stdout_byte_by_byte()
