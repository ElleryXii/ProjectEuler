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


function Find()
    local max = 0

    for i = 999, 100,-1 do
        for j = 999, i,-1 do 
            prod = i*j
            if prod < max then
                break
            end
            if CheckPanlindrome(prod) then
                max = math.max(max, prod)
            end
        end
    end
    return max
end

print(Find())
