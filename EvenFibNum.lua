-- Project Euler Problem 2 Even Fibonacci numbers
-- Find the sum of the even-valued Fibonacci numbers no grater than four million.


function BruteForce()
    prev1 = 1
    prev2 = 2
    sum = 0

    cur = 2
    while cur <= 4*1E6 do
        if cur%2 == 0 then
            sum = sum + cur
        end
        cur = prev1+prev2
        prev1 = prev2
        prev2 = cur
    end
    print(sum)
end


-- In a Fib sequence 1 1 2 3 4 8..., every third number is even
function AddEveryThrid()
    sum = 0
    a = 1
    b = 1
    c = a+b
    while c <= 4*1E6 do
        sum = sum+c
        a = b+c
        b = a+c
        c = a+b
    end
    print(sum)
end


BruteForce()
AddEveryThrid()