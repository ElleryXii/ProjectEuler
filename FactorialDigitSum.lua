-- Problem 20
-- Find the sum of the digits in the number 100!


-- A more general case of P16, Power Digit Sum. Do the calculation on the fly to avoid overflow.

local Res = {1}
local Num = 100
local Sum = 1
local Len = 1

for i = 1, Num do
    local carry = 0
    Sum = 0
    for d = 1, #Res do
        Res[d] = Res[d]*i + carry
        carry = 0
        if Res[d] >= 10 then
            carry = Res[d]//10
            Res[d] = Res[d]%10
        end
        Sum = Sum + Res[d]
    end
    while carry >= 1 do 
        Len = Len + 1
        Res[Len] = carry%10
        Sum = Sum + Res[Len]
        carry = carry - carry%10
        if carry%10==0 then carry = carry//10 end
    end
end

print(Sum)