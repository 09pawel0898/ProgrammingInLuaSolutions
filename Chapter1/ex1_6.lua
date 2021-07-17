--[[
    Exercise 1.6: How can you check whether a value is a Boolean without using the function type?
]]

function isBoolean (x)
    return x == true or x == false
 end

isBoolean(true)