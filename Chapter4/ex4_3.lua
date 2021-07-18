--[[
Exercise 4.3: Write a function to insert a string into a given position of another one:
 > insert("hello world", 1, "start: ") --> start: hello world
 > insert("hello world", 7, "small ") --> hello small world
]]

function insertWord(str1,pos,str2)
    temp = string.sub(str1,1,pos)
    temp2 = string.sub(str1,pos,-1)
    return temp .. str2 .. temp2
end

print(insertWord("I like lua",7,"programming in")) --> I like programming in lua