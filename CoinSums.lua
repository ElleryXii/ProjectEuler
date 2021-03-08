-- Problem 31
--[[In the United Kingdom the currency is made up of pound (£) and pence (p). There are eight coins in general circulation:
1p, 2p, 5p, 10p, 20p, 50p, £1 (100p), and £2 (200p).
It is possible to make £2 in the following way:
1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
How many different ways can £2 be made using any number of coins?]]

local coins = {1,2,5,10, 20,50,100,200}
local target = 200
local dp = {};
setmetatable(dp, {__index = function() return 0 end})
dp[0] = 1;
for i = 1, #coins do
  for j = coins[i], target do
    dp[j] = dp[j]+dp[j - coins[i]];
  end
end
print(dp[target])