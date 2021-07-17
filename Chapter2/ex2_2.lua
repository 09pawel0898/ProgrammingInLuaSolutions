--[[
Exercise 2.2: An alternative implementation for the eight-queen problem would be to generate all possible
permutations of 1 to 8 and, for each permutation, to check whether it is valid. Change the program to use
this approach. How does the performance of the new program compare with the old one? (Hint: compare
the total number of permutations with the number of times that the original program calls the function
isplaceok.)
]]

N = 8 -- board size

counter = 0
function isplaceok (a, n, c)
    counter = counter + 1
    for i = 1, n - 1 do  -- for each queen already placed
       if (a[i] == c) or           -- same column?
      (a[i] - i == c - n) or   -- same diagonal?
      (a[i] + i == c + n) then -- same diagonal?
      return false           -- place can be attacked
       end
    end
    return true      -- no attacks; place is OK
 end
 
 -- print a board
 function printsolution (a)
    for i = 1, N do      -- for each row
       for j = 1, N do   -- and for each column
      -- write "X" or "-" plus a space
      io.write (a[i] == j and "X" or "-", " ")
       end
       io.write ("\n")
    end
    io.write ("\n")
 end
 
 -- add to board 'a' all queens from 'n' to 'N'
 function addqueen (a, n)
    if n > N then -- all queens have been placed?
        printsolution(a)
        return true
    else -- try to place n-th queen
        for c = 1, N do
            if isplaceok(a, n, c) then
                a[n] = c -- place n-th queen at column 'c'
                addqueen(a, n + 1)
                --if addqueen(a, n + 1) then return true end
            end
        end
    end
    return false
 end
 
 
 function addqueen2 (a, n)
    if n > N then   -- all queens have been placed?
        for n = 1, N do
            if not isplaceok(a, n, a[n]) then return end
        end
        printsolution (a)
    else   -- try to place n-th queen
        for c = 1, N do
            for i = 1, n - 1 do
                if a[i] == c then break end
            end
            a[n] = c    -- place n-th queen at column 'c'
            addqueen2 (a, n + 1)
       end
    end
 end

 -- run the program
 addqueen({}, 1)
 --addqueen2({}, 1)
 print(counter)

 -- comparing the two versions we can see that the second made much more invocations of function
 -- isplaceok() - 50889536, when the first made only 15720