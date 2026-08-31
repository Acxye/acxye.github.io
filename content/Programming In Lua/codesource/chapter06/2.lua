function take_arbitrary (...)
    return select(2, ...), select(3, ...)
end

print(take_arbitrary(1, 2, 3, nil))
