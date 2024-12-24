-- Даны два целых числа A и B (A < B). Вывести все
-- целые числа, расположенные между данными числами
-- (включая сами эти числа), в порядке их возрастания,
-- а также количество N этих чисел.
----------------------------------------------------------
function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number" and Number%1 == 0
	return Number
end
-------------------------------------
function  calculation(A,B)
     Tabl = {}
    local counter = 1
    for i = A, B do
        Tabl[counter] = i
        counter = counter+1
        
    end
    return Tabl
end

do
   print("Enter two integers A and B (A < B)") 
   A = Read_number("Enter number A: ")
   B = Read_number("Enter number B: ")
   if A<B then
Volume = calculation(A,B)
print("There are "..(#Tabl-2).." integers between the number "..A.." and the number "..B)
for i=1, #Tabl do
    io.write (Tabl[i].."  ")
end
   else 
    print ("Number "..A.." is not less than the number "..B)
   end
end