-- Problem 19
-- [[How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?]]

-- This is the number of days passed since last month, i.e., the number of days of last month, not this month.
Month = {31, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30}

function IsLeapYear(year)
    return (year%4 == 0 and year%100~=0) or year%400==0
end

-- 1 Jan 1901 was a Tuesday, zero-based
DayInWeek = 1
Sundays = 0
for year = 1901, 2000 do
    for month = 1, 12 do
        if not (year == 1901 and month == 1) then 
            days = Month[month]
            if month == 3 and IsLeapYear(year) then days=days+1 end
            DayInWeek = (DayInWeek+days%7)%7
            -- Again, day in week is zero-based
            if DayInWeek == 6 then Sundays = Sundays+1 end
        end
    end
end


print(Sundays)

