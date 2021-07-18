--[[
Exercise 4.8: Redo the previous exercise so that it ignores differences in spaces and punctuation.
]]


function ispali(str)
    local temp = string.gsub(str,"[%s%p]", "")
    return temp == string.reverse( temp )
end

print(ispali("step on no pets"))
print(ispali("banana"))