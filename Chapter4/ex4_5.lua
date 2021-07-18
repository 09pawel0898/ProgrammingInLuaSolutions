--[[
Exercise 4.5: Write a function to remove a slice from a string; the slice should be given by its initial
position and its length:
 > remove("hello world", 7, 4) --> hello d
]]

function removeSlice(str, start,len)
    temp = string.sub(str,1,start)
    temp2 = string.sub(str,start + len + 1,-1)
    return temp .. temp2
end

print(removeSlice("I like programming in lua",7,15)) --> I like lua