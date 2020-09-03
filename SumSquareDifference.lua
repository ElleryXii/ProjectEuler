-- Problem 6
-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


-- Return the sum of squres of the first n numbers
function SumOfSquares(n)
    local sum = 0;
    for i=1,n do
        sum = sum + i*i
    end
    return sum
end



-- Return the squre of sum of the first n numbers
-- sum arithmetic sequence a_n = a_1 + (n-1)d
function SqureOfSum(n)
    local sum = (1+n)*n/2
    return sum*sum
end



print(SqureOfSum(10)-SumOfSquares(10))