--[[
Exercise 5.1: What will the following script print? Explain
sunday = "monday"; monday = "sunday"
 t = {sunday = "monday", [sunday] = monday}
 print(t.sunday, t[sunday], t[t.sunday])
]]

sunday = "monday"; 
monday = "sunday"

 t = {sunday = "monday", [sunday] = monday}

 -- the above is quivalent to 
 --  t = {sunday = "monday", ["monday"] = "sunday"}

 print(t.sunday, t[sunday], t[t.sunday]) --> moday  sunday  sunday
