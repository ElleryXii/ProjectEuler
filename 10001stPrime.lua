-- Problem 7
-- What is the 10001st prime number?


-- return true if n is prime
function IsPrime(n)
    for i = 2, math.sqrt(n) do
        if n%i == 0 then
            return false
        else
            while n%i == 0 do
                n = n%i
            end
        end
    end
    return true
end

-- A brute force solution. Check every number incrementally to find the nth prime number
function FindNthPrime(n)
    local primeCount = 0
    local i = 2
    while primeCount < n do
        if IsPrime(i) then
            primeCount = primeCount+1
        end
        i = i+1
    end
    return i-1
end


print(FindNthPrime(10001))