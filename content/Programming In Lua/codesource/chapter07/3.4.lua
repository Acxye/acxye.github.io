function copy_stdin_to_stdout_at_once ()
    io.output():write(io.input():read("a"))
end

copy_stdin_to_stdout_at_once()
