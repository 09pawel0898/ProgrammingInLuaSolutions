--[[
    Exercise 6.4: Write a function to shuffle a given list. Make sure that all permutations are equally probable.
]]

math.randomseed(os.time())

function shuffleList(list)

    local indices = {}
    for i = 1, #list do
        indices[i] = i
    end

    local shuffled = {}
    for i = 1, #list do
        local id = math.random(#indices)
        local value = list[indices[id]]
        table.remove(indices, id)
        shuffled[i] = value
    end
    return shuffled
end

function printElements(arr)
    for k,v in pairs(arr) do
        print(v)
    end
end

-- test the shuffle function
nums = shuffleList({1, 2, 3, 4, 5})
printElements(nums)