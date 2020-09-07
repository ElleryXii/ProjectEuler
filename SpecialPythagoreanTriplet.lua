-- Problem 9
--[[A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
    a2 + b2 = c2
    For example, 32 + 42 = 9 + 16 = 25 = 52.
    There exists exactly one Pythagorean triplet for which a + b + c = 1000.
    Find the product abc.
]]

-- Brute Force
local squareNums = {}

for i = 1, 499 do 
    squareNums[i*i] = i
end

for square_a,a in pairs(squareNums) do
    for square_b,b in pairs(squareNums) do
        if squareNums[square_a+square_b] and a + b + squareNums[square_a+square_b] == 1000 then
            print(a*b*squareNums[square_a+square_b])
        end
    end
end





