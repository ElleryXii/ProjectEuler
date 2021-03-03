-- Problem 22
-- Use p022_names.txt, Sort the names into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
-- For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
-- What is the total of all the name scores in the file?

require "Utilities"

local temp = ReadFile("p022_names.txt")[1]
local names = {}
for i in string.gmatch(temp, "%w+") do
    table.insert(names,i)
end
table.sort(names)


local function worth(name)
    local sum = 0
    for i = 1, string.len(name) do
        local c = string.sub(name, i, i)
        sum = sum +string.byte(c)-64
    end
    return sum
end

local ans = 0
for k,v in pairs(names) do
    ans = ans + k*worth(v)
end

print(ans)