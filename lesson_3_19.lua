-- Дано целое число, лежащее в диапазоне от –999 до 999. Вывести строку — словесное описание данного
-- числа вида "отрицательное двузначное число", "нулевое число", "положительное однозначное число" и т.д.
-------------------------------------------------------------------------------------------------------
function Read_number(read)
	
	repeat
		 io.write(read)
		 Number = tonumber( io.read())	
         len = #tostring(math.abs(Number))
	until type(Number) == "number" and Number%1 == 0 and len <4
	
	return Number, len
end
-------------------------------------------------------------
function Logic(Number, len)
	local Tabl_abs ={"negative", "positive", "zero"}
	local Tabl_digit ={" single-digit", " two-digit", " three-digit"}

	if  Number==0 then message = "It's a "..Tabl_abs[3].." number" return message
		elseif Number== math.abs( Number) then message =Tabl_abs[2]
		else   message = Tabl_abs[1]
	end
	

	message = "It's a "..message..Tabl_digit[len].." number"
	return message

end
---------------------------------------------------
do
   Number,len = Read_number("Enter an integer from -999 to 999 : ")
   print(Number.." - "..Logic(Number,len))
end