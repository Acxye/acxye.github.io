function compute_polynomial (polynomial_tbl, x)
    local temp = polynomial_tbl[#polynomial_tbl]  
    for i = #polynomial_tbl - 1, 1, -1 do
        temp = temp * x + polynomial_tbl[i]
    end
    return temp
end

a_polynomial_tbl = {2, 3, 5, 1, 2}
x = 23

print(compute_polynomial(a_polynomial_tbl, x))
