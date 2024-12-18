--  Дан номер некоторого года (положительное целое
-- число). Вывести соответствующий ему номер столетия,
-- учитывая, что, к примеру, началом 20 столетия был
-- 1901 год.
-------------------------------------------------------
function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number" and Number > 0
	return math.floor(Number)
end
------------------
function Century(Year)
   local Century_units = {"Первое","Второе","Третье","Четвертое","Пятое","Шестое","Седьмое","Восьмое", "Девятое"}
   local Century_1     = {"Одиннадцатое","Двенадцатое","Тринадцатое","Четырнадцатое","Пятнадцатое","Шестнадцатое",
                     "Семнадцатое","Восемнадцатое","Девятнадцатое"}
   local Century_tens  = {"Двадцать","Тридцать","Сорок","Пятьдесят","Шестьдесят","Семьдесят","Восемьдесят","Девяносто"}
   local Century_2     = {"Десятое","Двадцатое","Тридцатое","Сороковое","Пятидесятое","Шестидесятое","Семидесятое",
                     "Восьмидесятое","Девяностое"}
    local Year = math.floor((Year/100)+1)
   
    if Year < 10 then message = Century_units[Year].." столетье" return message
    elseif Year>10 and Year<20 then message = Century_1[Year-10].. " столетье" return message
    elseif (Year/10)==math.floor(Year/10) then message = Century_2[Year/10].." столетье" return message
    else 
        Tens = math.floor( Year/10 )-1
        Units = Year%10
        message = Century_tens[Tens].." "..Century_units[Units].." столетье"
        return message
    end
end
do
 
    year = Read_number("Введите год ( положительное целое число) : ")
    print(year.." - Это "..Century(year))
    
end
---------------------