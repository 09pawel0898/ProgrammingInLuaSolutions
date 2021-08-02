--[[
    Exercise 6.1: Write a function that takes an array and prints all its elements.
]]

function printElements(arr)
    for k,v in pairs(arr) do
        print(v)
    end
end

printElements({1,2,3,4,5})