-- Problem 3 Largest prime factor
-- What is the largest prime factor of the number 600851475143 ?

-- Solution: find all the prime factors

local GetPrimeFactors =  {}

function SetDefault (t, d)
    local mt = {__index = function () return d end}
    setmetatable(t, mt)
end


function GetPrimeFacotrs(n)
    -- pf: a table that stores the prime factor of n. Key is the prime factor, value is the order of that factor.
    local pf = {}
    SetDefault(pf,0)

    
    while (n%2 == 0) do
        pf[2] = pf[2]+1
        n = n/2
    end

    for i=3, math.sqrt(n), 2 do
        while n%i == 0 do
            pf[i] = pf[i] + 1
            n = n/i
        end
    end

    if n>2 then
        pf[n] = 1
    end
    return pf
end

function PrintPrimeFactor(n)
    local pf = GetPrimeFacotrs(n)
    for k,v in pairs(pf) do
        for i = 1, v do
            print(k)
        end
    end
end


return GetPrimeFactors
