class Menu
	attr_accessor :day, :title, :breakfast

	def initialize(day, &block)
		@day = day
		#@title = title
		@breakfast, @lunch, @dinner = [], [], []
		@table = [" ", "grasas carbohidratos", "proteínas", "fibra", "sal", "valor energético"]
		@tot_energy = 0
		if block_given?  
			if block.arity == 1
				yield self
			else
				instance_eval(&block) 
			end
		end
	end

	def titulo(titulo)
		@title = titulo
	end

	def ingesta(properties = {})
		@min = properties[:min] ? properties[:min] : "unknown"
		@max = properties[:max] ? properties[:max] : "unknown"
	end

	def desayuno(properties = {})
		@breakfast.push(food(properties))
	end

	def almuerzo(properties = {})
		@lunch.push(food(properties))
	end

	def cena(properties = {})
		@dinner.push(food(properties))
	end

	def food(properties)
		food = Array.new(7)
		food[0] = properties[:descripcion] ? "\"#{properties[:descripcion]}\"" : "unknown"
		food[0] = food[0].length > 23 ? "#{food[0][0,20]}..\"" : food[0]
		food[1] = properties[:grasas] ? properties[:grasas] : 0.0
		food[2] = properties[:carbohidratos] ? properties[:carbohidratos] : 0.0
		food[3] = properties[:proteinas] ? properties[:proteinas] : 0.0
		food[4] = properties[:fibra] ? properties[:fibra] : 0.0
		food[5] = properties[:sal] ? properties[:sal] : 0.0
		food[6] = (food[1] * 36 + food[2] * 17 + food[3] * 17 + food[5] * 25).round(2)
		@tot_energy += food[6]
		return food
	end

	def to_s()
		output = "#{@day}\t\t\t\t\tComposición nutricional\n"
		output << "=" * 100 + "\n"
		output << "\t\t\tgrasas\tcarbohidratos\tproteínas\tfibra\tsal\tvalor energético\n"
		output << "Desayuno\n" + to_s_helper(@breakfast) + "\n"
		output << "Almuerzo\n" + to_s_helper(@lunch) + "\n"
		output << "Cena\n" + to_s_helper(@dinner)
		output << "Valor energético total #{@tot_energy}"
		output
	end

	def to_s_helper(liste)
		o = ""
		liste.each do |obj|
			o << "#{obj[0]}\t"
			if obj[0].length < 16
				o << "\t"
				if obj[0].length < 8
					o << "\t"
				end
			end
			o << "#{obj[1]}\t#{obj[2]}\t\t#{obj[3]}\t\t#{obj[4]}\t#{obj[5]}\t#{obj[6]}\n"
		end
		return o
	end
end

menu = Menu.new("Lunes") do
	titulo      "Bajo en calorías"
	ingesta     :min => 30, :max => 35
	desayuno    :descripcion => "Pan de trigo integral",
				:porcion => "1 rodaja",
				:gramos => 100,
				:grasas => 3.3,
				:carbohidratos => 54.0,
				:proteinas => 11.0,
				:fibra => 2.3,
				:sal => 0.06
	desayuno    :descripcion => "Actimel",
				:porcion => "1 porción",
				:gramos => 100,
				:grasas =>  3.4,
				:carbohidratos => 4.4,
				:proteinas => 3.6,
				:sal => 0.05
	almuerzo    :descripcion =>  "Arroz",
				:porcion => "1 taza",
				:gramos => 100,
				:grasas => 0.9,
				:carbohidratos => 81.6,
				:proteinas => 6.67,
				:fibra => 1.4,
				:sal => 0.04
	almuerzo    :descripcion =>  "Lentejas",
				:porcion => "1/2 cucharón",
				:grasas => 0.4,
				:carbohidratos => 20.0,
				:proteinas => 9.0,
				:fibra => 8.0,
				:sal => 0.02
	almuerzo    :descripcion => "Naranja",
				:porcion => "1 pieza",
				:gramos => 100,
				:grasas =>  0.12,
				:carbohidratos => 11.75,
				:proteinas => 0.94,
				:fibra => 2.4
	cena        :descripcion => "Leche entera hacendado",
				:porcion => "1 vaso",
				:gramos => 100,
				:grasas => 3.6,
				:carbohidratos => 4.6,
				:proteinas => 3.1,
				:sal => 0.13
end
puts menu.to_s
