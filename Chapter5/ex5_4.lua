--[[
Exercise 5.4: We can represent a given polynomia in Lua as a list of its coefficients, such as {a0, a1, ..., an}.
Write a function that takes a polynomial (represented as a table) and a value for x and returns the polynomial value.
]]


function polynomialValue (poly, x)
    local result = 0
    for k, v in ipairs (poly) do
       result = result + v * x^(k - 1)
    end
    return result
 end

 poly = {1,2,3}
 x = 3
 print(polynomialValue(poly,x))