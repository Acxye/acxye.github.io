function integral (f, x1, x2, n)
    n = n or 100000
    local delta_x = (x2 - x1) / n 
    local res = 0

    for i = 1, n do
        res = res + delta_x * f(x1 + i * delta_x)
    end

    return res 
end

print(integral(math.sin, 0, math.pi / 2))
