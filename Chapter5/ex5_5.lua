--[[
Exercise 5.5: Can you write the function from the previous item so that it uses at most n additions and n
multiplications (and no exponentiations)?
]]

function inverseTable(tab)
    result = {}
    local id = 1
    local i = #tab
    while i ~= 0 do
        result[id] = tab[i]
        id = id + 1
        i = i - 1
    end
    return result
end

-- using chorner scheme
function polynomialValue (poly, degree, x)
    if(degree == 0) then
        return poly[1]
    else
        return x * polynomialValue(poly,degree-1,x) + poly[degree+1]
    end
end

 p = {1,2,3}
 x = 3

 print(polynomialValue(inverseTable(p),#p-1,x))
