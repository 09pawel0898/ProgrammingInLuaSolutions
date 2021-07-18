--[[
Exercise 3.7: Using math.random, write a function to produce a pseudo-random number with a standard
normal (Gaussian) distribution.
]]

function randNorm()
    local x 
    repeat
       x = math.ceil(math.log(1/math.random())^.5*math.cos(math.pi*math.random())*150+500)
    until x >= 1 and x <= 1000
    return x
 end

 print(randNorm())
