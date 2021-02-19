-- Problem 17
--[[If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
]]

--Solution: go through every number
Nums = {[0]=0, [1]=3, [2]=3, [3]=5, [4]=4, [5]=4, [6]=3, [7]=5, [8]=5, [9]=4, [10]=3, [11]=6,[12]=6, [13]=8, [14]=8, [15]=7, 
[16]=7,[17]=9, [18]=8, [19]=8, [20]=6, [30]=6, [40]=5, [50]=5, [60]=5, [70]=7,[80]=6, [90]=6, [1000]=11}
for i=100,999,100 do 
    Nums[i] = Nums[i//100]+7
end

Sum = 0
for i = 1, 1000  do
    local letters = 0;
    if Nums[i] ~= nil then
        letters = Nums[i]
    else
        if i<100 then
            letters = Nums[i//10*10]+ Nums[i%10]
            Nums[i] = letters
        else
            letters = Nums[i//100*100] + Nums[i%100]+3
        end
    end
    Sum = Sum + letters
end


print(Sum)


--Alternatively, could use some counting technique.