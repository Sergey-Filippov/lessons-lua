-- Дано целое число, лежащее в диапазоне от 1 до 9999.
-- Вывести строку — словесное описание данного числа
-- видa  "четное двузначное число", "нечетное четырехзначное число" и т.д.
---------------------------------------------------------
function Read_number(read)
	
	repeat
		 io.write(read)
		 Number = tonumber( io.read())	
         len = #tostring(Number)
	until type(Number) == "number" and Number%1 == 0 and len <=4 and Number>0
	
	return Number, len
end
-----------------------------------------
function Logic(Number, len)
	local Tabl = {" odd ", " even "}
	local Tabl_digit ={" single-digit", " two-digit", " three-digit", "four-digit"}

	if  (Number/2)%1== 0 then message = Tabl[2]
		
		else   message = Tabl[1]
	end
	

	message = "It's a "..message..Tabl_digit[len].." number"
	return message

end
------------------------------------------------
do
    Number,len = Read_number("Enter an integer from 1 to 9999 : ")
   print(Number.." - "..Logic(Number,len)) 
end