
-- Problem 13 Large sum
-- Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
-- Note: The numbers are stored in P13LargeNum.txt


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


local sum = 0
local lines = ReadFile("P13LargeNum.txt")
for _,v in pairs(lines) do
    sum = sum + tonumber(v)
end

print(sum)