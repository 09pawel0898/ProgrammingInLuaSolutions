--[[
    Exercise 6.2: Write a function that takes an arbitrary number of values and returns all of them, except
the first one.
]]

function returnAllExceptTheFirst(...)
    return select(2,...)
end

print(returnAllExceptTheFirst(1,2,3,4,5))

