--[[
Exercise 1.7: Consider the following expression:
 (x and y and (not z)) or ((not y) and x)
Are the parentheses necessary? Would you recommend their use in that expression?
]]

-- As the priority of the operators is : not -> and -> or 
-- in the expression (x and y and (not z)) or ((not y) and x) the brackets are not necessary
-- it could be also written as 'x and y and not z or not y and x'
