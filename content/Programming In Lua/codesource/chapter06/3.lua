function take_arbitrary (...)
    local args = table.pack(...)
    return table.unpack(args, 1, args.n - 1)
end

print(take_arbitrary(1, 2, 3, nil))
