function chose_sample ()
    local a_random_number = math.random()
    while a_random_number == 0 do   -- BoxMullerTransform need sample on (0, 1) not include 0
       a_random_number = math.random() 
    end

    return a_random_number
end

function BoxMullerTransform ()
    local u1 = chose_sample()
    local u2 = chose_sample()

    -- both z1 and z2 match the requirement
    local z1 = math.sqrt(-2 * math.log(u1)) * math.cos(2 * math.pi * u2)
    local z2 = math.sqrt(-2 * math.log(u1)) * math.sin(2 * math.pi * u2)

    return z1, z2
end

z1, z2 = BoxMullerTransform()
print(z1)
print(z2)
