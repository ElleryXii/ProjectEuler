
-- Problem 13 Large sum
-- Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
-- Note: The numbers are stored in P13LargeNum.txt
require "Utilities"

local sum = 0
local lines = ReadFile("P13LargeNum.txt")
for _,v in pairs(lines) do
    sum = sum + tonumber(v)
end

print(sum)