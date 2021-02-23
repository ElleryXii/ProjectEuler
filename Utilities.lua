-- Utilities

local Utilities =  {}

function SetDefault (t, d)
    local mt = {__index = function () return d end}
    setmetatable(t, mt)
end

function IsPrimeNumber(n)
    if n == 1 then
        return false
    end
    if n == 2 then
        return true
    end
    if (n%2 == 0) then
        return false
    end

    for i=3, math.sqrt(n), 2 do
        if n%i == 0 then
            return false
        end
    end

    return true
end


function FileExist(file)
    local f = io.open(file, "rb")
    if f then f:close() end
    return f ~= nil
  end

function ReadFile(file)
    if not FileExist(file) then return {} end
    local lines = {}
    for line in io.lines(file) do 
      table.insert(lines, line)
    end
    return lines
  end


return Utilities
