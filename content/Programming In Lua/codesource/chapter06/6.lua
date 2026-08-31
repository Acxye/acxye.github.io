function next_code(n)
    return string.format([[
        print("level %d")
        local f = assert(load(next_code(%d)))
        f()
        print("back %d")
    ]], n, n + 1, n)
end

local f = assert(load(next_code(1)))
f()
