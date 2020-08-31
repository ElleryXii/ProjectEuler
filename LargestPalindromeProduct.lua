-- Problem 4
-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99. 
-- Find the largest palindrome made from the product of two 3-digit numbers.


function CheckPanlindrome(num)
    local numString = tostring(num)
    i = 1
    j = string.len(numString)
    while i<j do
        if numString:sub(i,i) ~= numString:sub(j,j) then
            return false
        end
        i = i+1
        j = j-1
    end
    return true
end


-- function CheckDigits(num)
--     local pf = GetPrimeFacotrs(num)
--     mul1, mul2 = 1, 1
--     for _,v in pairs(a) do
--         if mul1*v <= mul2*v then
--             mul1 = mul1 * v
--         else
--             mul2 = mul2 * v
--         end
--         if mul1 > 999 or mul2 > 999 then
--             return false
--         end
--     end

--     if mul1<100 or mul2<100 then
--         return false
--     end
--     return true
-- end


-- function GetPrimeFacotrs(n)
--     local pf = {}
--     idx = 1
--     while (n%2 == 0) do
--         n = n/2
--         pf[idx] = 2
--         idx = idx +1
--     end

--     for i=3, math.sqrt(n), 2 do
--         while n%i == 0 do
--             n = n/i
--             pf[idx] = i
--             idx = idx +1 
--         end
--     end

--     if n>2 then
--         pf[idx] = n
--     end

--     return pf
-- end


function Find()
    local max = 0

    for i = 999, 100,-1 do
        for j = 999, 100,-1 do 
            prod = i*j
            if CheckPanlindrome(prod) then
                max = math.max(max, prod)
            end
        end
    end
    return max
end

print(Find())