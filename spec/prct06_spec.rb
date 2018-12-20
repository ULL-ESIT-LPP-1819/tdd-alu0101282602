# 
# Contains all the tests
# 
# @author [roro]

RSpec.describe Prct06 do
	it "has a version number" do
		expect(Prct06::VERSION).not_to be nil
	end

	it "does something useful" do
		expect(true).to eq(true)
	end

	before :each do

		# Some food
		# name, fat, saturated fats, hydrates, sugar, protein, salt
		@test1 = Nutri.new("Salad", 1000, 15, 34, 45, 67, 3)
		@test2 = Nutri.new("Coke", 2000, 150, 4, 25, 45, 30)
		@test3 = Nutri.new("Pizza", 3000, 1500, 40, 250, 45, 20)
		@test4 = Nutri.new("Burger", 4000, 1500, 30, 450, 67, 30)
		@test5 = Nutri.new("Arepa", 5000, 3000, 4, 250, 40, 40)
		@test6 = Nutri.new("Salada", 6000, 215, 34, 245, 27, 23)
		@test7 = Nutri.new("Coke_cero", 7000, 3150, 34, 325, 35, 33)
		@test8 = Nutri.new("Pizza-Burger", 8000, 4500, 44, 4250, 45, 40)
		@test9 = Nutri.new("Ham-Burger", 9000, 157, 37, 457, 67, 37)
		@test10 = Nutri.new("Abacaxi", 10000, 3800, 48, 850, 48, 48)
		
		# The menus
		@menu1 = [@test1, @test1]
		@menu2 = [@test1, @test2]
		@menu3 = [@test2, @test3]
		@menu4 = [@test3, @test4]
		@menu5 = [@test4, @test5]
		@menu6 = [@test5, @test6]
		@menu7 = [@test6, @test7]
		@menu8 = [@test7, @test8]
		@menu9 = [@test8, @test9]
		@menu10 = [@test9, @test10]
		@menus = [@menu2, @menu8, @menu5, @menu1, @menu6, @menu3, @menu9, @menu7, @menu10, @menu4]

		# Human
		@rob = Anthropometric.new("Robin", "Steiger", 1, 23, 1.9, 73, [0.5, 0.7], [0.4, 0.8], [0.4, 0.5, 0.6], [0.9, 0.7, 0.5], [0.5, 0.6, 0.8], [0.9, 0.8, 0.5], [0.5, 0.9])
		@julian = Anthropometric.new("Julian", "Herrdum", 1, 30, 1.9, 70, [0.3, 0.5], [0.8, 0.4], [0.2, 0.4, 0.8], [0.9, 0.5, 0.1], [0.2, 0.6, 0.5], [0.4, 0.5, 0.6], [0.9, 0.8])
		@dummy1 = Anthropometric.new("Dummy1", "One", 1, 23, 1.4, 80, [0.5, 0.7], [0.4, 0.8], [0.4, 0.5, 0.6], [0.9, 0.7, 0.5], [0.5, 0.6, 0.8], [0.9, 0.8, 0.5], [0.5, 0.9])
		@dummy2 = Anthropometric.new("Dummy2", "Two", 0, 30, 1.7, 120, [0.3, 0.5], [0.8, 0.4], [0.2, 0.4, 0.8], [0.9, 0.5, 0.1], [0.2, 0.6, 0.5], [0.4, 0.5, 0.6], [0.9, 0.8])
		@dummy3 = Anthropometric.new("Dummy3", "Three", 1, 40, 1.9, 50, [0.3, 0.5], [0.8, 0.4], [0.2, 0.4, 0.8], [0.9, 0.5, 0.1], [0.2, 0.6, 0.5], [0.4, 0.5, 0.6], [0.9, 0.8])
		@dummy4 = Anthropometric.new("Dummy1", "Four", 1, 23, 1.4, 80, [0.5, 0.7], [0.4, 0.8], [0.4, 0.5, 0.6], [0.9, 0.7, 0.5], [0.5, 0.6, 0.8], [0.9, 0.8, 0.5], [0.5, 0.9])
		@dummy5 = Anthropometric.new("Dummy2", "Five", 0, 30, 1.7, 120, [0.3, 0.5], [0.8, 0.4], [0.2, 0.4, 0.8], [0.9, 0.5, 0.1], [0.2, 0.6, 0.5], [0.4, 0.5, 0.6], [0.9, 0.8])
		@dummy6 = Anthropometric.new("Dummy3", "Six", 1, 40, 1.9, 50, [0.3, 0.5], [0.8, 0.4], [0.2, 0.4, 0.8], [0.9, 0.5, 0.1], [0.2, 0.6, 0.5], [0.4, 0.5, 0.6], [0.9, 0.8])
		@dummy7 = Anthropometric.new("Dummy1", "Seven", 1, 23, 1.4, 80, [0.5, 0.7], [0.4, 0.8], [0.4, 0.5, 0.6], [0.9, 0.7, 0.5], [0.5, 0.6, 0.8], [0.9, 0.8, 0.5], [0.5, 0.9])
        @dummy8 = Anthropometric.new("Dummy2", "Eight", 0, 30, 1.7, 120, [0.3, 0.5], [0.8, 0.4], [0.2, 0.4, 0.8], [0.9, 0.5, 0.1], [0.2, 0.6, 0.5], [0.4, 0.5, 0.6], [0.9, 0.8])
		
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
        @diets = Liste.new()
        @diets.pushn([@diet_rob, @diet_julian, @diet1, @diet2, @diet3, @diet4, @diet5, @diet6, @diet7, @diet8])
		
		# DLL
		@list = Liste.new()

	end

	describe "Nutri" do
		describe "Testing vars" do
			it "Debe existir un nombre para la etiqueta." do
				expect(@test1.name).to eq("Salad")
				expect(@test2.name).to eq("Coke")
			end
			it "Debe existir la candidad de grasas." do
				expect(@test1.fat).to eq(1000)
				expect(@test2.fat).to eq(2000)
			end
			it "Debe existir la candidad de grasas saturadas." do
				expect(@test1.sfats).to eq(15)
				expect(@test2.sfats).to eq(150)
			end
			it "Debe existir la candidad de hidratos de carbono." do
				expect(@test1.hydrates).to eq(34)
				expect(@test2.hydrates).to eq(4)
			end
			it "Debe existir la candidad de azúcares." do
				expect(@test1.sugar).to eq(45)
				expect(@test2. sugar).to eq(25)
			end
			it "Debe existir la candidad de proteínas."do 
				expect(@test1.protein).to eq(67)
				expect(@test2.protein).to eq(45)
			end
			it "Debe existir la candidad de sal." do
				expect(@test1.salt).to eq(3)
				expect(@test2.salt).to eq(30)
			end
		end
		describe "Testing methods" do

			it "Existe un método para obtener el nombre." do

				expect(@test1.sname).to eq("Salad")

				expect(@test2.sname).to eq("Coke")
			end
			it "Existe un método para obtener el valor energético." do
				expect(@test1.senergy).to eq("38792 kJ/g / 9422 kcal/g\n")
				expect(@test2.senergy).to eq("75583 kJ/g / 18376 kcal/g\n")
			end
			it "Existe un método para obtener la cantidad de grasas." do
				expect(@test1.sfat).to eq("1000")
				expect(@test2.sfat).to eq("2000")
			end
			it "Existe un método para obtener la cantidad de grasas saturadas." do
				expect(@test1.ssfats).to eq("15")
				expect(@test2.ssfats).to eq("150")
			end
			it "Existe un método para obtener la cantidad de hidratos de carbono." do
				expect(@test1.shydrates).to eq("34")
				expect(@test2.shydrates).to eq("4")
			end
			it "Existe un método para obtener la cantidad de azúcares." do
				expect(@test1.ssugar).to eq("45")
				expect(@test2.ssugar).to eq("25")
			end
			it "Existe un método para obtener la cantidad de proteínas." do
				expect(@test1.sprotein).to eq("67")
				expect(@test2.sprotein).to eq("45")
			end
			it "Existe un método para obtener la cantidad de sal." do
				expect(@test1.ssalt).to eq("3")
				expect(@test2.ssalt).to eq("30")
			end
			it "Existe un método para obtener la etiqueta formateada." do
				expect(@test1.to_s).to eq("Name: \t\tSalad\nfat: \t\t1000\nsat.fats: \t15\nhydrates: \t34\nsugar: \t\t45\nprotein: \t67\nsalt: \t\t3\n")
				expect(@test2.to_s).to eq("Name: \t\tCoke\nfat: \t\t2000\nsat.fats: \t150\nhydrates: \t4\nsugar: \t\t25\nprotein: \t45\nsalt: \t\t30\n")
			end
		end
	end

	describe "Liste" do
		it "La lista tiene q tener un head y un tail. Y al inicio tienen q estar vacia (nil). Y el tamano tiene q ser cero." do
			expect(@list.head).to eq(nil)
			expect(@list.tail).to eq(nil)
			expect(@list.size).to eq(0)
			expect(@list.pop()).to eq("")
		end
		it "Se puede insertar objectos.\nDespues tambien lo puedes borrar con push.\n
		La lista siempre tiene que contener los elementos y el tamano size tb tiene q estar correcto." do
			expect(@list.push(@test1)).to eq(@test1.to_s)
			expect(@list.size).to eq(1)
			expect(@list.push(@test2)).to eq(@test2.to_s)
			expect(@list.head.value.to_s).to eq(@test1.to_s)
			expect(@list.tail.value.to_s).to eq(@test2.to_s)
			expect(@list.size).to eq(2)
			expect(@list.head.prev).to eq(nil)
			expect(@list.head.next.value).to eq(@test2)
			expect(@list.tail.prev.value).to eq(@test1)
			expect(@list.tail.next).to eq(nil)

			expect(@list.pop()).to eq(@test2.to_s)
			expect(@list.size).to eq(1)
			expect(@list.pop()).to eq(@test1.to_s)
			expect(@list.head).to eq(nil)
			expect(@list.tail).to eq(nil)
			expect(@list.size).to eq(0)
		end
		it "Y claro tambien debe contener la etiqueta y la sal." do
			expect(@list.push(@test1)).to eq(@test1.to_s)
			expect(@list.push(@test2)).to eq(@test2.to_s)
			expect(@list.head.value.to_s).to eq(@test1.to_s)
			expect(@list.tail.value.to_s).to eq(@test2.to_s)
			expect(@list.head.value.salt).to eq(3)
			expect(@list.tail.value.salt).to eq(30)
		end
	end

	describe "Human and Antro.." do
		it "Do the same tests as in prct05" do

			expect(@rob.name_to_s).to eq("Name: Robin\n")
			expect(@rob.surname_to_s).to eq("Surname: Steiger\n")
			expect(@rob.age_to_s).to eq("Age: 23\n")
			expect(@rob.sex_to_s).to eq("Sex: 1\n")
			expect(@rob.weight_to_s).to eq("Weight: 73\n")
			expect(@rob.height_to_s).to eq("Height: 1.9\n")
			expect(@rob.imc).to eq(20.22)
			expect(@rob.rcc).to eq(1.0)
			expect(@rob.porc_fat).to eq(13.35)

			expect(@rob.triceps_to_s).to eq(0.5)
			expect(@rob.biceps_to_s).to eq(0.7)
			expect(@rob.subscapular_to_s).to eq(0.63)
			expect(@rob.suprailiac_to_s).to eq(0.73)
			expect(@rob.arm_to_s).to eq(0.7)


			expect(@julian.name_to_s).to eq("Name: Julian\n")
			expect(@julian.surname_to_s).to eq("Surname: Herrdum\n")
			expect(@julian.age_to_s).to eq("Age: 30\n")
			expect(@julian.sex_to_s).to eq("Sex: 1\n")
			expect(@julian.weight_to_s).to eq("Weight: 70\n")
			expect(@julian.height_to_s).to eq("Height: 1.9\n")
			expect(@julian.imc).to eq(19.39)
			expect(@julian.rcc).to eq(0.67)
			expect(@julian.porc_fat).to eq(13.97)

		end



		context "Testing inheritance" do
			context "Pacientes de una consulta" do

				it "Expeting that Antro... is SubClass of Human" do
					expect(Anthropometric < Human).to eq(true)
				end

				it "Check if methods are correctly inheritated and in which class they are implemented" do

					expect(Anthropometric.instance_methods(false).include?(:name_to_s)).to eq(false)
					expect(Anthropometric.instance_methods(false).include?(:surname_to_s)).to eq(false)
					expect(Anthropometric.instance_methods(false).include?(:age_to_s)).to eq(false)
					expect(Anthropometric.instance_methods(false).include?(:sex_to_s)).to eq(false)
					expect(Anthropometric.instance_methods(false).include?(:weight_to_s)).to eq(true)
					expect(Anthropometric.instance_methods(false).include?(:height_to_s)).to eq(true)
					expect(Anthropometric.instance_methods(false).include?(:uni_med)).to eq(true)
					expect(Anthropometric.instance_methods(false).include?(:imc)).to eq(true)
					expect(Anthropometric.instance_methods(false).include?(:rcc)).to eq(true)
					expect(Anthropometric.instance_methods(false).include?(:porc_fat)).to eq(true)

					expect(@rob.is_a?(Anthropometric)).to eq(true)
					expect(@rob.respond_to?(:name_to_s)).to eq(true)
				end
			end
		end

		describe "Liste" do
			it "Se puede insertar objectos del tipo Huan.\nDespues tambien lo puedes borrar con push.\n
		La lista siempre tiene que contener los elementos y el tamano size tb tiene q estar correcto.\nTambien se puede acceder el imc de la lista." do
				expect(@list.push(@rob)).to eq("Robin Steiger")
				expect(@list.size).to eq(1)
				expect(@list.push(@dummy1)).to eq("Dummy1 One")
				expect(@list.size).to eq(2)
				expect(@list.push(@dummy2)).to eq("Dummy2 Two")
				expect(@list.size).to eq(3)
				expect(@list.push(@dummy3)).to eq("Dummy3 Three")
				expect(@list.size).to eq(4)
				expect(@list.push(@julian)).to eq("Julian Herrdum")
				expect(@list.size).to eq(5)
				expect(@list.head.value.to_s).to eq("Robin Steiger")
				expect(@list.tail.value.to_s).to eq("Julian Herrdum")
				expect(@list.head.prev).to eq(nil)
				expect(@list.head.next.value).to eq(@dummy1)
				expect(@list.tail.prev.value).to eq(@dummy3)
				expect(@list.tail.next).to eq(nil)

				expect(@list.head.value.imc).to eq(20.22)
				expect(@list.tail.value.imc).to eq(19.39)


				expect(@list.pop()).to eq("Julian Herrdum")
				expect(@list.size).to eq(4)
				@list.pop()
				@list.pop()
				@list.pop
				expect(@list.pop()).to eq("Robin Steiger")
				expect(@list.head).to eq(nil)
				expect(@list.tail).to eq(nil)
				expect(@list.size).to eq(0)
			end
			it "Y los objectos si estan en la lista tambien deben cointener sus atributos." do
				expect(@list.push(@test1)).to eq(@test1.to_s)
				expect(@list.push(@test2)).to eq(@test2.to_s)
				expect(@list.head.value.to_s).to eq(@test1.to_s)
				expect(@list.tail.value.to_s).to eq(@test2.to_s)
				expect(@list.head.value.salt).to eq(3)
				expect(@list.tail.value.salt).to eq(30)
			end
		end
		describe "Comparable" do
			it "The basic comparable functions have to work. Nobody knew what we have to compare exactly so I'm comparing the names" do
				expect(@test1==(@test2)).to eq(false)
				expect(@test1<(@test2)).to eq(false)
				expect(@test1>(@test2)).to eq(true)
				expect(@test1<=(@test2)).to eq(false)
				expect(@test1>=(@test2)).to eq(true)
			end

			it "The basic comparable functions have to work with different objects as well. Nobody knew what we have to compare exactly so I'm comparing the names" do
				expect(@test1==(@julian)).to eq(false)
				expect(@test1<(@julian)).to eq(false)
				expect(@test1>(@julian)).to eq(true)
				expect(@test1<=(@julian)).to eq(false)
				expect(@test1>=(@julian)).to eq(true)
			end

			it "The basic comparable functions have to work with two objects of the type Human/Anthropo... as well. Nobody knew what we have to compare exactly so I'm comparing the names" do
				expect(@rob==(@julian)).to eq(false)
				expect(@rob<(@julian)).to eq(false)
				expect(@rob>(@julian)).to eq(true)
				expect(@rob<=(@julian)).to eq(false)
				expect(@rob>=(@julian)).to eq(true)
			end

			it "Lists wor correctly with enumerable max, min, sort and the collect funtion" do

				@list.push(@test1)
				@list.push(@test2)
				expect(@list.all? {|x|  x.fat <= 50000}).to eq(true)
				expect(@list.max().fat).to eq(1000) 
				expect(@list.min().fat).to eq(2000) 
				# sort
				expect(((@list.sort())[0]).fat).to eq(2000)
				expect(((@list.sort())[1]).fat).to eq(1000)
				#select
				expect(((@list.select { |e| e.fat > 400 })[0]).fat).to eq(1000)
				#collect
				expect(@list.collect{"puff"}).to eq(["puff", "puff"]) 

			end


			it "Same things should work with Anthrophometic" do
				@list.push(@rob)
				@list.push(@julian)
				@list.push(@dummy1)
				@list.push(@dummy2)
				@list.push(@dummy3)

				expect(@list.all?  { |x| x.age <= 32}).to eq(false)
				expect(@list.all?  { |x| x.age <= 40}).to eq(true)
				# min max
				expect(@list.max().age).to eq(23)
				expect(@list.min().age).to eq(23) 
				# sort
				expect(((@list.sort())[0]).age).to eq(23)
				expect(((@list.sort())[1]).age).to eq(30)
				#collect
				expect(@list.collect{"puff"}).to eq(["puff", "puff", "puff", "puff","puff"]) 
			end
		end

	end

	describe "Diet" do
		it "If no one has eaten nothing, there always has to be to less energy" do
			@diets.each { |x| expect(x.food_energy < x.gasto_energetico_total).to eq(true)}
			end
		it "Can do sports" do
			for i in (0...4) do
				@diet_rob.sport(i)
			end
			@diet_rob.sport(0)
		end

		it "Alalize should print a nice anallization" do
			expect(@diet_rob.analize).to eq(nil)
		end
		
		it "if they have eaten too much, there has to be too much energy" do
			@diets.each do |i|
				i.eat(@test1)
				i.eat(@test2)
				i.eat(@test3)
				i.eat(@test4)
				i.eat(@test5)
			end
			@diets.each { |x| expect(x.food_energy < x.gasto_energetico_total).to eq(false)}
		end
	end

	describe "Sorting Algorithms" do
		it "Sort DLL - for" do
			expect(@diets.fors).to eq([@diet3, @diet6, @diet_julian, @diet_rob, @diet1, @diet4, @diet7, @diet2, @diet5, @diet8])
		end

		it "Sort Array - for" do
			expect(@menus.fors).to eq([@menu1, @menu2, @menu3, @menu4, @menu5, @menu6, @menu7, @menu8, @menu9, @menu10])
		end

		it "Sort DLL - each" do
			expect(@diets.eachs).to eq([@diet3, @diet6, @diet_julian, @diet_rob, @diet1, @diet4, @diet7, @diet2, @diet5, @diet8])
		end

		it "Sort Array - each" do
			expect(@menus.eachs).to eq([@menu1, @menu2, @menu3, @menu4, @menu5, @menu6, @menu7, @menu8, @menu9, @menu10])
		end

		it "Sort DLL - sort" do
			expect(@diets.sort).to eq([@diet3, @diet6, @diet_julian, @diet_rob, @diet1, @diet4, @diet7, @diet2, @diet5, @diet8])
		end

		it "Sort Array - sort" do
			@energy = @menus.map do |menu|
				menu.each_helper
			end
			expect(@energy.sort).to eq([18844, 27798, 45836, 64028, 81984, 99798, 117856, 136070, 154234, 172310])
		end
	end
end
