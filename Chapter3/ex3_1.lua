--[[
Exercise 3.1: Which of the following are valid numerals? What are their values?
 .0e12 .e12 0.0e 0x12 0xABFG 0xA FFFF 0xFFFFFFFF
 0x 0x1P10 0.1e1 0x0.1p1
 ]]
       
 -- invalid ones

 --b = .e12           --> unexpected symbol near '.'
 --c = 0.0e           --> malformed numbler near '0.0e'    
 --e = 0xABFG          --> malformed numbler near '0xABFG'
 --i = 0x              --> malformed numbler near '0x'


 
 a = .0e12          --> 0.0      
 d = 0x12           --> 18
 f = 0xA            --> 10
 g = FFFF           --> nil
 h = 0xFFFFFFFF     --> 4294967295
 j = 0x1P10         --> 1024.0
 k = 0.1e1          --> 1.0
 l = 0x0.1p1        --> 0.125

 print(a)
 print(d)
 print(f)
 print(g)
 print(h)
 print(j)
 print(k)
 print(l)