function copy_stdin_to_stdout_line_by_line ()
    for line in io.input():lines() do 
        io.output():write(line.."\n")
    end
end

copy_stdin_to_stdout_line_by_line()
