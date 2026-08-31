function compute_polynomial (polynomial_tbl, x)
    local res = 0
    for k, v in ipairs(polynomial_tbl) do
        res = res + v * (x ^ (k - 1))
    end
    return res
end

function newpoly (polynomial_tbl)
    return function (x)
        return compute_polynomial(polynomial_tbl, x)
    end
end

f = newpoly({3, 0, 1})
print(f(0))
print(f(5))
print(f(10))
