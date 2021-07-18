 --Exercise 4.1: How can you embed the following fragment of XML as a string in a Lua program?

 --<![CDATA[
 --Hello world
 --]]>

 --Show at least two different ways

 -- short literal string
 
way1 = 
"<![CDATA[\
Hello world\
]]>"


print(way1)

 -- long literal string

way2 = 
[==[
<![CDATA[
Hello world
]]>
]==]

print(way2)
