--[[
Exercise 1.1: Run the factorial example. What happens to your program if you enter a negative number?
Modify the example to avoid this problem.
]]


-- If i enter a negative number program crashes with an stack overflow error, 
-- thats because the recursive function never meets the stop condition, i added an if statement to check that


-- defines a factorial function
function fact (n)
    if n == 0 then
        return 1
    else
        return n * fact(n - 1)
    end
end
    
print("enter a number:")
a = io.read("*n") -- reads a number
if a >= 0 then
    print(fact(a))
else
    print("Can't compute factorial of negative number")