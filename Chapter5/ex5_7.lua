--[[
Exercise 5.7: Write a function that inserts all elements of a given list into a given position of another given
list.
]]

function insertElements(from,to,pos)
    for i = 1,#from do
        table.insert( to, pos+i-1, from[i] )
    end
end

function showTab(tab)
    for k,v in pairs(tab) do
        print(v)
    end
end

tab1 = {1,2,3}
tab2 = {4,5,6}

insertElements(tab2,tab1,2)
showTab(tab1)
