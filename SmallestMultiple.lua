-- Problem 5
-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

-- Solution: It's the product of all the prime factors of the highest order

require "PrimeFactor"
require "Utilities"


local PFS = {}
SetDefault(PFS, 0)

for i = 1, 20 do
    local pf = GetPrimeFacotrs(i)
    for k,v in pairs(pf) do
        if v>PFS[k] then
            PFS[k] = v
        end
    end
end

res = 1

for k,v in pairs(PFS) do
    res = res * math.pow(k,v)
end

print(res)
