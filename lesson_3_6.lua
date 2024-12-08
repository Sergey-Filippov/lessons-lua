-- Значения переменных X, Y, Z поменять местами так, чтобы они оказались
-- упорядоченными по возрастанию.

function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number"
	return tostring(Number)
end
---------
function Sortirovka(Tabl)
	local pairisList = {}
	
	for key, val in pairs(Tabl) do
table.insert(pairisList, {key = key, val = val})	
end
table.sort(pairisList, function( a,b)  return(a.val < b.val) end)
return pairisList
end

do
Tabl= {x=Read_number("Введите первое число x : "),	
	   y=Read_number("Введите второе число y : "),
	   z=Read_number("Введите третье число z : ")}
	
Tabl = Sortirovka(Tabl)

for i=1, #Tabl do
print(Tabl[i].key.." = "..Tabl[i].val)	
end

end
