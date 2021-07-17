--[[
Exercise 1.5: What is the value of the expression type(nil) == nil? (You can use Lua to check
your answer.) Can you explain this result?
]]

print(type(nil) == nil)

--[[

The printed value is false. 
Its simply because the value type returned by the type() function is 'string' so in this
case - its "nil" wich is not equal to nil.
To get 'true' printed we have to add quotes to nil.

]]

print(type(nil) == "nil")