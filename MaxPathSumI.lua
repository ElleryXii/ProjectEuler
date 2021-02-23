-- Problem 18
--[[
Find the maximum total from top to bottom of the triangle below:
75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
]]

require "Utilities"

Triangle = {
{75},
{95, 64},
{17, 47, 82},
{18, 35, 87, 10},
{20, 04, 82, 47, 65},
{19, 01, 23, 75, 03, 34},
{88, 02, 77, 73, 07, 63, 67},
{99, 65, 04, 28, 06, 16, 70, 92},
{41, 41, 26, 56, 83, 40, 80, 70, 33},
{41, 48, 72, 33, 47, 32, 37, 16, 94, 29},
{53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14},
{70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57},
{91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48},
{63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31},
{04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23},
}

-- Solution: Start from the bottom line, update the second bottom line with the max sum, repeat.

function max_path_sum(triangle)
    for i = #triangle-1, 1, -1 do
        for j = 1, #triangle[i] do
            triangle[i][j] = math.max(triangle[i][j]+triangle[i+1][j],triangle[i][j]+triangle[i+1][j+1])
        end
    end
    return triangle[1][1]
end

print(max_path_sum(Triangle))

lines = ReadFile("p067_triangle.txt")
Triangle_67 = {}
for _,line in pairs(lines) do
    local cur ={}
    for i in string.gmatch(line, "%S+") do
        table.insert(cur, tonumber(i))
    end
    table.insert(Triangle_67, cur)
end

print(max_path_sum(Triangle_67))
