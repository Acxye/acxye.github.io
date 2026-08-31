function compute_polynomial (polynomial_tbl, x)
    local res = 0
    for k, v in ipairs(polynomial_tbl) do
        res = res + v * (x ^ (k - 1))
    end
    return res
end

a_polynomial_tbl = {2, 3, 5, 1, 2}
x = 23

print(compute_polynomial(a_polynomial_tbl, x))
