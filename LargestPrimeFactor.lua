-- Problem 3 Largest prime factor
-- What is the largest prime factor of the number 600851475143 ?
local GetPrimeFactors =  {}

function GetPrimeFacotrs(n)
    local pf = {}
    local idx = 1
    while (n%2 == 0) do
        pf[idx] = 2
        idx = idx+1
        n = n/2
    end

    for i=3, math.sqrt(n), 2 do
        while n%i == 0 do
            pf[idx] = i
            idx = idx+1
            n = n/i
        end
    end

    if n>2 then
        pf[idx] = n
        idx = idx+1
    end
    return pf
end

function PrintPrimeFactor(n)
    local pf = GetPrimeFacotrs(n)
    for _,v in pairs(pf) do
        print(v)
    end
end




GetPrimeFacotrs(600851475143)

return GetPrimeFactors
