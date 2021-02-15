-- Problem 14
--[[

The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
]]


Upper = 1000000
AllNums = {}

MaxChainLen = -1
Ans = -1

-- Bcause the chain of any number 2k would be longer than chain(k), we don't need to consider 1~upper/2
for i = Upper//2, Upper do
    AllNums[i] = i
end

for i=Upper, Upper//2, -1 do
    if AllNums[i] ~= -1 then
        local n = i
        local chainLen = 0
        while n~=1 do
            AllNums[n] = -1
            if n%2 == 1 then
                n = 3*n+1
            else
                n = n//2
            end
            chainLen = chainLen+1
        end
        if chainLen > MaxChainLen then
            MaxChainLen = chainLen
            Ans = i
        end
    end
end

print(Ans)