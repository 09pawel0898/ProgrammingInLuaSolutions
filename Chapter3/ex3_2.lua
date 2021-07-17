--[[
Exercise 3.2: Explain the following results:
 > math.maxinteger * 2 --> -2
 > math.mininteger * 2 --> 0
 > math.maxinteger * math.maxinteger --> 1
 > math.mininteger * math.mininteger --> 0
 ]]


 -- math.maxinteger * 2 --> -2

 print(math.maxinteger+1)
 -- if we add just 1 we achieve 1 on sign bit so the number received is (hex) 80...0 -> (dec) -9223372036854775808
 -- now we have to add math.maxinteger-1
 print(math.maxinteger-1)
 print((math.maxinteger+1) + (math.maxinteger-1))
 -- and the above is equivalent to math.maxinteger * 2
 print(math.maxinteger * 2)



 -- math.mininteger * 2 --> 0

 print(math.mininteger)
-- (hex) 80...0 -> (dec) -9223372036854775808
-- after multiplying 8 * 2 = 16 the value is carried away and we receive 0 on this first bit, so the result is equal to 0, 
-- remaining bits are not changed



 -- math.maxinteger * math.maxinteger --> 1
 -- math.mininteger * math.mininteger --> 0

 -- i have no clue how to explain these two