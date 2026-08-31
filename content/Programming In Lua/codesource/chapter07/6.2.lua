function mkdir (mkdir_command)
    local f = io.popen(mkdir_command)
    for line in f:lines() do 
        print(line)
    end
end

function rmdir (rmdir_command)
    local f = io.popen(rmdir_command)
    for line in f:lines() do 
        print(line)
    end
end

function ls (target_dir)
    local f = io.popen("ls -a "..target_dir)
    for line in f:lines() do 
        print(line)
    end
end

mkdir("mkdir -p ~/Notes/ProgrammingInLua/codesource/chapter07/test/")
rmdir("rm -rf ~/Notes/ProgrammingInLua/codesource/chapter07/test/")
ls("~/Notes/ProgrammingInLua/codesource/chapter07/")
