--  Дан номер некоторого года (положительное целое число). Вывести число дней в этом году, учитывая, что
-- обычный год насчитывает 365 дней, а високосный — 366 дней. Високосным считается год, делящийся на 4,
-- за исключением тех годов, которые делятся на 100 и не делятся на 400 (например, годы 300, 1300 и 1900
-- не являются високосными, а 1200 и 2000 — являются).
-------------------------------------------------------------------------------
function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number" and Number > 0
	return math.floor(Number)
end
------------------------------------
function Logic(X)
    if X%400 == 0 or (X%4 == 0 and X%100 ~= 0) then return true
    else return false  
    end
end
do
    year = Read_number("Enter the number of a certain year (a positive integer) : ")
    if Logic(year) then print( year.."  This is a leap year. It has 366 days")
    else print(year.. "  This is not a leap year. There are 365 days in it.")
    end
end