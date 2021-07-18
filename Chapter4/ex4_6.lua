--[[
Exercise 4.6: Redo the previous exercise for UTF-8 strings:
 > remove("ação", 2, 2) --> ao
(Here, both the initial position and the length should be counted in codepoints.)
]]


function removeSlice (str, start, len)
    temp1 = string.sub(str,1,utf8.offset (str,start - 1))
    temp2 = string.sub(str,utf8.offset (str,start + len),-1)
    return temp1 .. temp2
 end
 
 print(removeSlice ("ação", 2, 2)) --> ao