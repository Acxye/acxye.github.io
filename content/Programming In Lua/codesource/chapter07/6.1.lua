function mkdir (mkdir_command)
    local ok, exit_code, signal = os.execute(mkdir_command)
    print("successfully executed: ", ok)
    print("exit code: ", exit_code)
    print("singal: ", singal)
end

function rmdir (rmdir_command)
    local ok, exit_code, signal = os.execute(rmdir_command)
    print("successfully executed: ", ok)
    print("exit code: ", exit_code)
    print("singal: ", singal)
end

function ls (target_dir)
    local ok, exit_code, signal = os.execute("ls -a "..target_dir)
    print("successfully executed: ", ok)
    print("exit code: ", exit_code)
    print("singal: ", singal)
end

mkdir("mkdir -p ~/Notes/ProgrammingInLua/codesource/chapter07/test/")
rmdir("rm -rf ~/Notes/ProgrammingInLua/codesource/chapter07/test/")
ls("~/Notes/ProgrammingInLua/codesource/chapter07/")
