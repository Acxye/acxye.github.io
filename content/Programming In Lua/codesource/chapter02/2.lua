N = 8

function isplaceok (a, n, c)
    for i = 1, n -1 do
        if (a[i] == c) or (a[i] - i == c - n) or (a[i] + i == c + n) then
            return false
        end
    end
    return true
end

function printsolution (a)
    for i = 1, N do
        for j = 1, N do
            io.write(a[i] == j and "X" or "-", " ")
        end
        io.write("\n")
    end
    io.write("\n")
end

count1 = 0
function addqueen (a, n)
    if n > N then
        printsolution(a)
    else
        for c = 1, N do
            ok = isplaceok(a, n, c)
            count1 = count1 + 1
            if ok then
                a[n] = c
                addqueen(a, n + 1)
            end
        end
    end
end

addqueen({}, 1)
print(count1)

count2 = 0
function addqueen (a)
    for r1 = 1, N do
        for r2 = 1, N do
            for r3 = 1, N do
                for r4 = 1, N do
                    for r5 = 1, N do
                        for r6 = 1, N do
                            for r7 = 1, N do
                                for r8 = 1, N do
                                    a = {r1, r2, r3, r4, r5, r6, r7, r8}
                                    b = {r1}
                                    is_ok = true

                                    for i = 2, N do
                                        ok = isplaceok(b, i, a[i])
                                        count2 = count2 + 1
                                        
                                        if ok then
                                            b[i] = a[i]
                                        else
                                            is_ok = false
                                            break
                                        end
                                    end

                                    if is_ok then
                                        printsolution(b)
                                    end

                                end
                            end 
                        end
                    end
                end
            end
        end
    end
end

addqueen({})
print(count2)
