require 'prct06/diet.rb'
require 'prct06/array.rb'
require 'prct06/human.rb'
require 'prct06/list.rb'
require 'prct06/nutri.rb'
require 'benchmark'
include Benchmark

RSpec.describe "Benchmark" do

    before :all do
        
        # Some food
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
=begin
	@pan = Etiqueta.new("Pan", true, 28, 15.0, 3.8, 1.8, 38.0, 2.5, 3.8, 0.4)
	@queso = Etiqueta.new("Queso", true, 17, 15.0, 13.9, 8.1, 0.6, 0.6, 15.7, 3.15)
	@leche = Etiqueta.new("Leche", true, 4, 197.25, 0.3, 0.2, 5.1, 5.1, 3.9, 0.15)
	@chocolate_untar = Etiqueta.new("Chocolate de untar", true, 26, 15, 31.6, 11.0, 56.7, 56.8, 6, 0.114)
	@galletas = Etiqueta.new("Galletas", true, 25, 8.0, 13.5, 6.2, 67.7, 1.4, 10, 1.3)
	@sopa = Etiqueta.new("Sopa", true, 1, 14, 4.3, 1.6, 71.6, 37.3, 5.5, 1.5)
	@salsa_tomate = Etiqueta.new("Salsa de Tomate", true, 39, 10, 3.9, 0.4, 9.8, 4.4, 1.3, 0.87)


	@pc1 = Paciente.new("Juan", 20, 1, 60, 1.52, [60.0, 60.1], [80.0, 80.2], [17.4, 17.6, 17.5], [8.0, 8.1, 8.0], [14.0, 13.9, 13.8], [17.5, 17.6, 17.4], [29.0, 28.9], 1 )
	@pc2 = Paciente.new("Pepe", 50, 1, 58, 1.60, [60.0, 60.1], [80.0, 80.2], [17.4, 17.6, 17.5], [8.0, 8.1, 8.0], [14.0, 13.9, 13.8], [17.5, 17.6, 17.4], [29.0, 28.9], 1 )
	@pc3 = Paciente.new("Loli", 43, 0, 79, 1.80, [60.0, 60.1], [80.0, 80.2], [17.4, 17.6, 17.5], [8.0, 8.1, 8.0], [14.0, 13.9, 13.8], [17.5, 17.6, 17.4], [29.0, 28.9], 4 )
	@pc4 = Paciente.new("Carla", 36, 0, 67, 1.45, [60.0, 60.1], [80.0, 80.2], [17.4, 17.6, 17.5], [8.0, 8.1, 8.0], [14.0, 13.9, 13.8], [17.5, 17.6, 17.4], [29.0, 28.9], 3 )
	@pc5 = Paciente.new("Pedro", 60, 1, 50, 1.70, [60.0, 60.1], [80.0, 80.2], [17.4, 17.6, 17.5], [8.0, 8.1, 8.0], [14.0, 13.9, 13.8], [17.5, 17.6, 17.4], [29.0, 28.9], 2 )
	@pc6 = Paciente.new("Ana", 70, 0, 50, 1.70, [60.8, 60.1], [80.0, 80.2], [18.4, 17.6, 17.5], [9.0, 8.1, 8.0], [14.0, 13.9, 13.8], [17.5, 17.6, 17.4], [29.0, 28.9], 2 )
	@pc7 = Paciente.new("Paco", 50, 1, 50, 1.70, [60.0, 60.7], [80.0, 81.2], [17.4, 17.9, 17.5], [8.0, 9.1, 8.0], [14.0, 13.9, 13.8], [17.5, 17.6, 17.4], [29.0, 28.9], 2 )
	@pc8 = Paciente.new("Mercedes", 60, 0, 50, 1.40, [61.0, 60.1], [90.0, 90.2], [18.4, 17.6, 17.5], [9.0, 8.1, 8.0], [14.0, 13.9, 13.8], [17.5, 17.6, 17.4], [29.0, 28.9], 2 )
	@pc9 = Paciente.new("Jesus", 75, 1, 50, 1.75, [71.0, 70.1], [90.0, 90.4], [17.4, 17.6, 17.5], [8.0, 8.1, 8.0], [14.0, 13.9, 13.8], [17.5, 17.6, 17.4], [29.0, 28.9], 2 )
	@pc10 = Paciente.new("Luis", 60, 1, 50, 1.80, [60.0, 60.1], [80.0, 80.2], [17.4, 17.6, 17.5], [8.0, 8.1, 8.0], [14.0, 13.9, 13.8], [17.5, 17.6, 17.4], [29.0, 28.9], 2 )

	@menu1 = [@salsa_tomate, @pan]
	@menu2 = [@galletas, @leche, @salsa_tomate]
	@menu3 = [@sopa]
	@menu4 = [@sopa, @queso, @salsa_tomate, @leche]
	@menu5 = [@galletas, @chocolate_untar]
	@menu6 = [@pan, @chocolate_untar]
	@menu7 = [@sopa, @pan, @queso]
	@menu8 = [@galletas, @sopa]
	@menu9 = [@chocolate_untar, @queso]
	@menu10 = [@salsa_tomate, @pan, @queso]
	@menus = [@menu1, @menu2, @menu3, @menu4, @menu5, @menu6, @menu7, @menu8, @menu9, @menu10]
	@pacientes = List.new
	@pacientes.insert_n_to_head([@pc1, @pc2, @pc3, @pc4, @pc5, @pc6, @pc7, @pc8, @pc9, @pc10])
=end
	end

	it "has a version number" do
		expect(Prct06::VERSION).not_to be nil
	end

    describe "#Benchmark" do
		it "ordenar lista con for" do
			expect(@diets.fors).to eq([@diet3, @diet6, @diet_julian, @diet_rob, @diet1, @diet4, @diet7, @diet2, @diet5, @diet8])
		end

		it "ordenar array con for" do
			expect(@menus.fors).to eq([@menu1, @menu2, @menu3, @menu4, @menu5, @menu6, @menu7, @menu8, @menu9, @menu10])
		end

		it "ordenar lista con each" do
			expect(@diets.eachs).to eq([@diet3, @diet6, @diet_julian, @diet_rob, @diet1, @diet4, @diet7, @diet2, @diet5, @diet8])
		end

		it "ordenar array con each" do
			expect(@menus.eachs).to eq([@menu1, @menu2, @menu3, @menu4, @menu5, @menu6, @menu7, @menu8, @menu9, @menu10])
		end

		it "ordenar lista con sort" do
			expect(@diets.sort).to eq([@diet3, @diet6, @diet_julian, @diet_rob, @diet1, @diet4, @diet7, @diet2, @diet5, @diet8])
		end

		it "ordenar array con sort" do
			@menus_kcal = @menus.map do |menu|
				menu.each_helper
			end
			expect(@menus_kcal.sort).to eq([18844, 27798, 45836, 64028, 81984, 99798, 117856, 136070, 154234, 172310])
		end

		it "Benchmark" do
			Benchmark.benchmark(CAPTION, 7, FORMAT, ">total:", ">avg:") do |x|
				tfl = x.report("for list:")     { vec = @diets.fors }
				tfa = x.report("for array:")    { vec2 = @menus.fors }
				tel = x.report("each list:")    { vec3 = @diets.eachs }
				tea = x.report("each array:")   { vec4 = @menus.eachs }
				tsl = x.report("sort list:")    { vec5 = @diets.sort }
				tsa = x.report("sort array:")   { vec6 = @menus.map{ |menu| menu.each_helper }.sort }
				[tfl+tfa+tel+tea+tsl+tsa, (tfl+tfa+tel+tea+tsl+tsa)/6]
			end
		end
	end
end
