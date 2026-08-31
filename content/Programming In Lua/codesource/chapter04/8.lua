function ispali (s)
    -- didn't include all space and punctuations
    space_and_punctuations_table = {
        " ",
        "\n",
        ".",
        ","
    }

    for i, v in pairs(space_and_punctuations_table) do
       s = string.gsub(s, v, "")
    end

    return string.reverse(s) == s
end

print(ispali("ste.,p   on no pets"))
