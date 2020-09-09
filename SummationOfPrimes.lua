-- Problem 10
-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
-- Find the sum of all the primes below two million.

require "Utilities"

--Solution: Simply loop through all numbers and check each one if it's prime.
function BruteForce(limit)
    local sum = 0
    for i = 2, limit do
        if IsPrimeNumber(i) then
            sum = sum +i
        end
    end
    return sum
end


-- Solution: remove all the numbers that are the multiple of some other number. The ones not removed are the prime numbers.
function SieveOfEratosthenes(limit)
    -- A table to keep record of which numbers are removed. 1 means remaining, 0 means removed
    local nums = {}
    for i = 2, limit do
        nums[i] = 1
    end

    -- Only need to check until sqrt(limit)
    local crossLimit = math.floor(math.sqrt(limit))
    for  i = 2, crossLimit do
        -- No need to check the numbers that haven't been removed yet, since a moved number's multiple would also been removed by its divisor.
        if nums[i] == 1 then
            local temp = i+i
            while temp<=limit do
                nums[temp] = 0
                temp = temp + i
            end
        end
    end

    local sum = 0
    for k,v in pairs(nums) do
        if v == 1 then
            sum = sum +k
        end
    end
    return sum
end



-- print(BruteForce(2E6))
print(SieveOfEratosthenes(2E6))
