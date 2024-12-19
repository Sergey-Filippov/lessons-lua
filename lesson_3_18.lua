-- Для данного x вычислить значение следующе функции f.
-- f(x) = -1, если x <=0, f(x) = x, если 0 < x < 2, f(x) = x2, если x >= 2.
----------------------------------------------------------------------
function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number" 
	return Number
end
------------------------------
function F(x)
   if x <= 0 then return -1 end 
   if x<2 and x>0 then return x end
   if x>=2 then return 2*x end

end
do
    X = Read_number("Enter the value of X : ")
print ("The value of the function F(x) for x = "..X.." is equal to "..F(X))

end