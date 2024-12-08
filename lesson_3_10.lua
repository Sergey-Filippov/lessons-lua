-- Даны три переменные: X, Y, Z. Если их значения
-- упорядочены по убыванию, то
-- удвоить их; в противном случае заменить значение
-- каждой переменной на противоположное.
-----------------------------------------------
function Read_number(read)
	Number = nil
	repeat
		 io.write(read)
		Number = tonumber( io.read())	

	until type(Number) == "number"
	return tostring(Number)
end
---------
function Logic(Tablica)
local decreasing = 1
	for i=2,#Tablica do
		
	if Tablica[i].vol < Tablica[i-1].vol then	decreasing = decreasing + 1 end
	
end

if decreasing == #Tablica then return true 
else return false
	
	end
end
-------------------------------
function duplication(Tablica)
	for i = 1, #Tablica do
			
			Tablica[i].vol = Tablica[i].vol*2
		end
		return Tablica
	end
------------------------------
function opposited(Tablica)
	for i = 1, #Tablica do
			
			Tablica[i].vol = Tablica[i].vol*(-1)
		end
		return Tablica
end

	


do
	Tabl = {}
	local liter = {"X","Y","Z"}
	for i=1,#liter do
		Tabl[i] = {}
Tabl[i].key = liter[i]
Tabl[i].vol= Read_number("Введите число "..liter[i].." : ")
end   
	
if Logic(Tabl)== true then 
	print("Таблица выравнена по убыванию")
	Tabl = duplication(Tabl)
else
	print("Таблица не выравнена по убыванию")
	Tabl = opposited(Tabl)
	end

for i=1, #Tabl do
print(Tabl[i].key.." = "..Tabl[i].vol)	
end

end