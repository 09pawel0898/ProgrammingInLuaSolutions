--[[
    Exercise 7.1: Write a program that reads a text file and rewrites it with its lines sorted in alphabetical order.
When called with no arguments, it should read from standard input and write to standard output. When
called with one file-name argument, it should read from that file and write to standard output. When called
with two file-name arguments, it should read from the first file and write to the second.
]]

--[[
Exercise 7.2: Change the previous program so that it asks for confirmation if the user gives the name of
an existing file for its output.
]]

function printLines(stream,lines)
    local tempStream = io.output()
    io.output(stream)
    for k,v in ipairs(lines) do
        io.write(v, "\n")
    end
    io.output(tempStream)
end

function rewriteSorted(fInName,fOutName)
    fInName = fInName or ""
    fOutName = fOutName or ""
    local lines = {}
    if fInName ~= "" then
        local fIn = assert(io.open(fInName,"r"))
        for line in fIn:lines() do
            lines[#lines + 1] = line
        end
        fIn:close()
        table.sort(lines)

        if(fOutName == "") then
            printLines(io.output(),lines)
        else
            local fOut = assert(io.open(fOutName,"w"))
            printLines(fOut,lines)
            fOut:close()
        end 
    else
        io.write("Reading from stdin started .. \n")
        endOfReading = false
        repeat
            local tempLine = io.read("l")
            if(tempLine == "end") then endOfReading = true 
            else lines[#lines+1] = tempLine end
        until endOfReading == true
        printLines(io.output(),lines)
    end
end

rewriteSorted(arg[1],arg[2])
