--[[
Exercise 3.6: Write a function to compute the volume of a right circular cone, given its height and the
angle between a generatrix and the axis.
]]

function coneVolume(height,angle)
    local s = height/math.cos(angle)
    v = 1/3*(s*math.cos(angle))* math.pi * (s * math.sin(angle))^2
    return v
end

print(coneVolume(3,60))