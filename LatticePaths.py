#Problem 15
# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, 
# there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20×20 grid?

# Solution: This is a Stars and Bars problem
# For a n*n grid, we need to move n times right and n times down
# So we need to find the number of all possible sequences of n down-movents and n right-movements
# i.e., for n+n posotions, fix n positions for down-movements, fill the rest with right movements
# The answer is n+n choose n

def combination(n, r):
    return factorial(n)//(factorial(r)*factorial(n-r))


def factorial(n):
    if n<0: return 0
    res = 1
    while n > 0:
        res = res*n
        n -= 1
    return res

print(combination(40, 20))