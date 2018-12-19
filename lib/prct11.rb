# require "prct06/list"
# require "prct06/array"
# require "prct06/human"
require "prct06/diet"


@test1 = Nutri.new("Salad", 5, 15, 34, 45, 67, 3)
@test2 = Nutri.new("Coke", 500, 150, 4, 25, 45, 30)
@test3 = Nutri.new("Pizza", 5000, 1500, 40, 250, 45, 20)
@test4 = Nutri.new("Burger", 2500, 1500, 340, 450, 67, 30)
@test5 = Nutri.new("Arepa", 6000, 3000, 4, 250, 400, 40)
@test6 = Nutri.new("Salada", 25, 215, 234, 245, 267, 23)
@test7 = Nutri.new("Coke_cero", 5300, 3150, 34, 325, 345, 330)
@test8 = Nutri.new("Pizza-Burger", 4500, 4500, 440, 4250, 445, 40)
@test9 = Nutri.new("Ham-Burger", 2507, 157, 347, 457, 677, 307)
@test10 = Nutri.new("Abacaxi", 680, 3800, 48, 850, 480, 48)

# Human
@rob = Anthropometric.new("Robin", "Steiger", 1, 23, 1.9, 73, [0.5, 0.7], [0.4, 0.8], [0.4, 0.5, 0.6], [0.9, 0.7, 0.5], [0.5, 0.6, 0.8], [0.9, 0.8, 0.5], [0.5, 0.9])
@julian = Anthropometric.new("Julian", "Herrdum", 1, 30, 1.9, 70, [0.3, 0.5], [0.8, 0.4], [0.2, 0.4, 0.8], [0.9, 0.5, 0.1], [0.2, 0.6, 0.5], [0.4, 0.5, 0.6], [0.9, 0.8])
@dummy1 = Anthropometric.new("Dummy1", "One", 1, 23, 1.4, 80, [0.5, 0.7], [0.4, 0.8], [0.4, 0.5, 0.6], [0.9, 0.7, 0.5], [0.5, 0.6, 0.8], [0.9, 0.8, 0.5], [0.5, 0.9])
@dummy2 = Anthropometric.new("Dummy2", "Two", 0, 30, 1.7, 120, [0.3, 0.5], [0.8, 0.4], [0.2, 0.4, 0.8], [0.9, 0.5, 0.1], [0.2, 0.6, 0.5], [0.4, 0.5, 0.6], [0.9, 0.8])
@dummy3 = Anthropometric.new("Dummy3", "Three", 1, 40, 1.9, 50, [0.3, 0.5], [0.8, 0.4], [0.2, 0.4, 0.8], [0.9, 0.5, 0.1], [0.2, 0.6, 0.5], [0.4, 0.5, 0.6], [0.9, 0.8])
@dummy4 = Anthropometric.new("Dummy1", "One", 1, 23, 1.4, 80, [0.5, 0.7], [0.4, 0.8], [0.4, 0.5, 0.6], [0.9, 0.7, 0.5], [0.5, 0.6, 0.8], [0.9, 0.8, 0.5], [0.5, 0.9])
@dummy5 = Anthropometric.new("Dummy2", "Two", 0, 30, 1.7, 120, [0.3, 0.5], [0.8, 0.4], [0.2, 0.4, 0.8], [0.9, 0.5, 0.1], [0.2, 0.6, 0.5], [0.4, 0.5, 0.6], [0.9, 0.8])
@dummy6 = Anthropometric.new("Dummy3", "Three", 1, 40, 1.9, 50, [0.3, 0.5], [0.8, 0.4], [0.2, 0.4, 0.8], [0.9, 0.5, 0.1], [0.2, 0.6, 0.5], [0.4, 0.5, 0.6], [0.9, 0.8])
@dummy7 = Anthropometric.new("Dummy1", "One", 1, 23, 1.4, 80, [0.5, 0.7], [0.4, 0.8], [0.4, 0.5, 0.6], [0.9, 0.7, 0.5], [0.5, 0.6, 0.8], [0.9, 0.8, 0.5], [0.5, 0.9])
@dummy8 = Anthropometric.new("Dummy2", "Two", 0, 30, 1.7, 120, [0.3, 0.5], [0.8, 0.4], [0.2, 0.4, 0.8], [0.9, 0.5, 0.1], [0.2, 0.6, 0.5], [0.4, 0.5, 0.6], [0.9, 0.8])


# Diet
@diet_rob = Diet.new(@rob)
@diet_julian = Diet.new(@julian)
@diet1 = Diet.new(@dummy1)
@diet2 = Diet.new(@dummy2)
@diet3 = Diet.new(@dummy3)
@diet4 = Diet.new(@dummy4)
@diet5 = Diet.new(@dummy5)
@diet6 = Diet.new(@dummy6)
@diet7 = Diet.new(@dummy7)
@diet8 = Diet.new(@dummy8)

# Tarea 1 con Array
def tarea1()
	return [@test1, @test2, @test3, @test4, @test5, @test6, @test7, @test8, @test9, @test10]
end

# Tarea 2 con Listas doblemente enlazadas
def tarea2()
	list = Liste.new()
	list.push(@diet_rob)
	list.push(@diet_julian)
	list.push(@diet1)
	list.push(@diet2)
	list.push(@diet3)
	list.push(@diet4)
	list.push(@diet5)
	list.push(@diet6)
	list.push(@diet7)
	list.push(@diet8)
	return list
end

# Tarea 3 con for
def tarea3_ar()
	liste = tarea1()
	valor_energetico = []
	gasto_energetico_total = []
	for i in liste.length do
		for j in liste.length-i-1
			if liste[i] < liste[i+1]
				tmp = liste[i+1]
				a[i+1] = a[i]
				a[i] = tmp
			end
		end
	end
end

def tarea3_li()
	liste = tarea2()
	valor_energetico = Liste.new()
	gasto_energetico_total = Liste.new()
	tmp = []
	for i in liste do
		tmp.push(i)
	end
	tmp = tarea3_ar()
	for i in tmp do
		valor_energetico.push(i)
		for j in tmp_list do
			if j > j.next
				tmpn = j.next
				tmpj = j
				tmpj
			end
		end
	end
end
def tarea_ar()
	liste = tarea1()
	valor_energetico = []
	gasto_energetico_total = []
	for i in liste.length do
		for j in liste.length-i-1
			if liste[i] < liste[i+1]
				tmp = liste[i+1]
				a[i+1] = a[i]
				a[i] = tmp
			end
		end
	end
end


# Tarea 4 con each
def tarea4(b)
	if b
		liste = tarea1()
	else
		liste = tarea2()
	end
end

# Tarea 3 con sort
def tarea3(b)
	if b
		liste = tarea1()
	else
		liste = tarea2()
	end
end


ar = tarea1()
li = tarea2()

puts ar
ar.kcal_for
puts ar
