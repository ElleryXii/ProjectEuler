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

  -- Supplement: https://mathschallenge.net/index.php?section=faq&ref=number/sum_of_divisors
function SumOfDivisors(num)
    local sum = 1
    local factor = 2
    while factor*factor<=num and num>1 do
        if num%factor == 0 then 
            temp = factor*factor
            num = num//factor
            while num % factor == 0 do
                temp = temp*factor
                num = num//factor
            end
            sum = sum*(temp-1)
            sum = sum//(factor-1)
        end
        if factor==2 then factor=3 else factor=factor+2 end
    end
    if num>1 then sum=sum*(num+1) end
    return sum
end


return Utilities
