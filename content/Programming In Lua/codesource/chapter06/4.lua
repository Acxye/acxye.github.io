math.randomseed(os.time())

function shuffle (a_list)
    for i = #a_list, 1, -1 do 
        local temp = math.random(1, i)
        a_list[i], a_list[temp] = a_list[temp], a_list[i]
    end 
    return a_list
end

print(table.unpack(shuffle({1, 2, 3, 4, 5})))
