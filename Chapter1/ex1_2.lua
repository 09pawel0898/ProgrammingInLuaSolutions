--[[
Exercise 1.2: Run the twice example, both by loading the file with the -l option and with dofile.
Which way do you prefer?
]]

-- First way is to load it with the following command
-- lua -l lib1

-- since then the library is loaded and the two functions privided are available

n = norm (2.2, 2.2)
twice (n) --> 6.2225396744416

-- The second way is to call standalone interpreter by lua command, and load the library using dofile() function

dofile ("lib1.lua") -- load our library
n = norm (2.2, 2.2)
twice (n) --> 6.2225396744416
