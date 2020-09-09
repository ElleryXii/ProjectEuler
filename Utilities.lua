-- Utilities

local Utilities =  {}

function SetDefault (t, d)
    local mt = {__index = function () return d end}
    setmetatable(t, mt)
end

function IsPrimeNumber(n)
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



return Utilities
