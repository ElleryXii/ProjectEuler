-- Problem 16
-- 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26. What is the sum of the digits of the number 2^1000?

Res = {1}
Power = 1000
Sum = 1
Len = 1

for i = 1, Power do
    local carry = 0
    Sum = 0
    for d = 1, #Res do
        Res[d] = Res[d]*2 + carry
        carry = 0
        if Res[d] >= 10 then
            Res[d] = Res[d]%10
            carry = 1
        end
        Sum = Sum + Res[d]
    end
    if carry == 1 then 
        Len = Len + 1
        Res[Len] = 1
        Sum = Sum + 1
    end
end

print(Sum)