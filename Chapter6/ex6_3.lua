--[[
    Exercise 6.3: Write a function that takes an arbitrary number of values and returns all of them, except
the last one.
]]

function returnAllExceptTheLast(...)
    local arg = table.pack(...)
    local result = {}
    for i = 1, #arg -1 do
        result[i] = arg[i]
    end
    return table.unpack(result)
end

print(returnAllExceptTheLast(1,2,3,4,5))

