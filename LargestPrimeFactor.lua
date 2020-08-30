-- Problem 3 Largest prime factor
-- What is the largest prime factor of the number 600851475143 ?

function GetPrimeFacotrs(n)
    while (n%2 == 0) do
        print(2," ")
        n = n/2
    end

    for i=3, math.sqrt(n), 2 do
        while n%i == 0 do
            print(i, " ")
            n = n/i
        end
    end

    if n>2 then
        print(n)
    end
end


GetPrimeFacotrs(600851475143)