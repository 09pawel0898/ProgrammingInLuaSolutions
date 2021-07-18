--[[
Exercise 4.4: Redo the previous exercise for UTF-8 strings:
 > insert("ação", 5, "!") --> ação!
Strings
32
(Note that the position now is counted in codepoints.)

]]

function insertWord (str1, pos, str2)
    temp1 = string.sub(str1,1,utf8.offset (str1, pos - 1))
    temp2 = string.sub(str1,utf8.offset (str1, pos),-1)
    return temp1 .. str2 .. temp2
 end

insertWord("ação", 5, "!")