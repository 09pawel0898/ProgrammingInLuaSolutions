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

io.write("Do you want to pass a file name as an input stream for the program? (yes/no)")
enterFile1 = io.read("l")
if(enterFile1 == "yes") then
    file1 = io.read("l")
    io.write("Do you want to pass a second file name as an output too? (yes/no)")
    enterFile2 = io.read("l")
    if(enterFile2 == "yes") then
        file2 = io.read("l")
        rewriteSorted(file1,file2)
    else
        rewriteSorted(file1)
    end
else
    rewriteSorted()
end
