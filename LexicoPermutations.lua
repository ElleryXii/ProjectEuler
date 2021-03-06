-- Problem 24
--[[
A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. 
If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. 
The lexicographic permutations of 0, 1 and 2 are:
012   021   102   120   201   210
What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?]]

function fac(n)
    local res = 1
    for i = 1, n do
        res = res*i
    end
    return res
end

local million = math.pow(10,6)

local digits = {0,1,2,3,4,5,6,7,8,9}
local unfixed = 9
local res = {}
local cur = 0
while million > 0 do
    local permus = fac(unfixed)
    if million>permus then
        million = million-permus
        cur = cur + 1
    elseif million == permus then
        million = million-permus
        table.insert(res, digits[cur+1])
        table.remove(digits,cur+1)        
        for i = unfixed, 0, -1 do
            table.insert(res, digits[i+1])
            table.remove(digits,i+1) 
        end
    else
        unfixed = unfixed-1
        table.insert(res, digits[cur+1])
        table.remove(digits,cur+1)
        cur = 0
    end
end

for _,v in pairs(res) do
    io.write(v)
end

