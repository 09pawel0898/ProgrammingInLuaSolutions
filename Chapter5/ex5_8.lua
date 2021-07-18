--[[
Exercise 5.8: The table library offers a function table.concat, which receives a list of strings and
returns their concatenation:
print(table.concat({"hello", " ", "world"})) --> hello world
Write your own version for this function.
Compare the performance of your implementation against the built-in version for large lists, with hundreds
of thousands of entries. (You can use a for loop to create those large lists.)
]]

function concat(list)
    result = ""
    for k,v in pairs(list) do
        result = result .. v
    end
    return result
end

function generateHugeListOfStrings()
    hugeListOfStrings = {}
    
    for i = 1,50000 do 
        hugeListOfStrings[i] = " string "
    end
    return hugeListOfStrings
end

listOfStrings = generateHugeListOfStrings()

clock = os.clock()
table.concat (listOfStrings)
print ("the use of built in table.concat", os.clock () - clock)

clock = os.clock ()
concat (listOfStrings)
print ("my version of concat", os.clock () - clock)

-- first -> 0.004
-- second -> 1.161
-- The difference is pretty significant. Thus, i would stay with the function provided in library :) 