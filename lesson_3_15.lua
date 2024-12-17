-- Даны четыре целых числа, одно из которых отлично от
-- трех других, равных между собой.
-- Вывести порядковый номер этого числа.
-----------------------------------------------
function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number"
	return Number
end
-------------------------------
function Logic(Num_tab)
    counter = 0
    len = #Num_tab
       for i=1, len do
       
         for key, value in ipairs(Num_tab) do   
            if Num_tab[i]== value and i~= key then  counter = counter + 1  end   
         end
        end
        if counter ~= (len-2)*(len-1) then  return false end
        counter = 0
        for i=2, len  do   
            if Num_tab[1]~= Num_tab[i] then 
                numer = i 
                counter = counter +1
            end   
         end
         if counter == (len-1) then return 1
         else return numer
         end
    
end
--------------------------------
do
    print("Enter four numbers")
    Print_number = {"first","second","third","fourth"}
	Tabl = {}
    for i=1, 4 do
		Read = ("Enter the "..Print_number[i].." number : ")
        Tabl[i] = Read_number(Read)
    end
	

    sequence_number = Logic(Tabl)
    if sequence_number == false then 
        print("Among the four numbers, no three are the same")
        print("не выполнены условия задачи")
    else
    print("Sequence_number = "..sequence_number )
    print("A number different from the others = "..Tabl[sequence_number])
    end
end