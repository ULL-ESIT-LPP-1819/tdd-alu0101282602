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
	end

	it "has a version number" do
		expect(Prct06::VERSION).not_to be nil
	end

	it "does something useful" do
		expect(true).to eq(true)
	end

    describe "#Benchmark" do
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

		it "Time measuring" do
			Benchmark.benchmark(CAPTION, 7, FORMAT, ">total:", ">avg:") do |x|
				fDLL = x.report("for DLL:")     { vec = @diets.fors }
				fA = x.report("for Ar:")    { vec2 = @menus.fors }
				eDLL = x.report("each DLL:")    { vec3 = @diets.eachs }
				eA = x.report("each Ar:")   { vec4 = @menus.eachs }
				sDLL = x.report("sort DLL:")    { vec5 = @diets.sort }
				sA = x.report("sort Ar:")   { vec6 = @menus.map{ |menu| menu.each_helper }.sort }
				[fDLL+fA+eDLL+eA+sDLL+sA, (fDLL+fA+eDLL+eA+sDLL+sA)/6]
				
			end
		end
	end
end