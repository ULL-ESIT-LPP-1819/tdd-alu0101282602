# 
# Diet Object to see if a persins gets enough nutrients
# 
# @author roro
# 

class Diet

	#getter and setter
	attr_accessor :food_energy, :gasto_energetico_total

        #
        # Initialize
	# @peso_teorico_ideal [float] [Ideal weight. Calculation formula: ((anthropometric.height - 150) * 0.75 + 50)]
	# @gasto_energetico_basal [float] [Basic energy consumption. Calculation formula: ((10 * anthropometric.weight) + (6.25 * anthropometric.height) - (5 * anthropometric.age) + ((anthropometric.sex==1)? -161 : 5))]
	# @efecto_termogeno [float] [Termogenetic energy consumption. Calculation formula: (@gasto_energetico_basal * 0.1)]
        # @factor_actividad_fisica [float] [A factor to calculate energy consumption depending on the intensity of the activity your doing]
	# @gasto_actividad_fisica [float] [Energy consumption during activity. Calculation formula: (@gasto_energetico_basal * @factor_actividad_fisica)]
	# @gasto_energetico_total [float] [Total Energy consumption. Calculation formula: (@gasto_energetico_basal * @efecto_termogeno + @gasto_actividad_fisica)]
        # @food [array[Nutri]] [A list of food an anthropometric ate]
        #
	# @return [nil] [nothing]
        def initialize(anthropometric)
		@peso_teorico_ideal = (anthropometric.height - 150) * 0.75 + 50
		@gasto_energetico_basal = (10 * anthropometric.weight) + (6.25 * anthropometric.height) - (5 * anthropometric.age) + ((anthropometric.sex==1)? -161 : 5)
		@efecto_termogeno = @gasto_energetico_basal * 0.1
		@factor_actividad_fisica = 0.0
		@gasto_actividad_fisica = @gasto_energetico_basal * @factor_actividad_fisica
		@gasto_energetico_total = @gasto_energetico_basal * @efecto_termogeno + @gasto_actividad_fisica
		@food = Liste.new()
		@food_energy = 0.0
	end
	
	#
	# Eat function to include a food the Anthropometric has eaten.
        # @param item [Nutri] [Food Item which was eaten]
        #
        # @return nil [Returns Nothing]
	def eat(it)
		@food.push(it)
		@food_energy = @food.reduce(0) { |sum, obj| sum + obj.energy }
	end
	
	#
        # Sport function to change the factor of the physical activity
        # @param intensity [int OR string] [Physical activity level]
        #
        # @return nil [Returns Nothing]
	def sport(intensity)
		
		if intensity == 0 || intensity == "reposo"
			@factor_actividad_fisica = 0.0
		elsif intensity == 1 || intensity == "ligera"
			@factor_actividad_fisica = 0.12
		elsif intensity == 2 || intensity == "moderada"
			@factor_actividad_fisica = 0.27
		elsif intensity == 3 || intensity == "intensa"
			@factor_actividad_fisica = 0.54
		else
			puts "Input doesn't make sence!"
		end
		@gasto_actividad_fisica = @gasto_energetico_basal * @factor_actividad_fisica
		@gasto_energetico_total = @gasto_energetico_basal * @efecto_termogeno + @gasto_actividad_fisica
	end
	
	#
	# Analize function Analizes all the data and calculates, wheater the consumed food was enough or even too much.
        #
	# @return [string] [Returns a nice readeable output with the evaluated data and the result.]
	def analize()
		difference = @gasto_energetico_total - @food_energy
		puts "Consumed Energy:\t#{@food_energy.round(2)}\nBurned Energy:\t\t#{@gasto_energetico_total.round(2)}\n\n"
		if difference.abs <= @gasto_energetico_total * 0.1
			puts "La cantidad de la alimentación es suficiente para cubrir las exigencias calóricas del organismo y mantiene el equilibrio de su balance.\n Difference: #{difference.round(2)}"
		elsif @food_energy < @gasto_energetico_total
			puts "La cantidad de la alimentación no es suficiente para cubrir las exigencias calóricas del organismo.\nTomaste #{difference.round(2)}kcal/g muy poco."
		elsif @food_energy > @gasto_energetico_total
			puts "Ha consumido demasiado calóricas. No mantiene el equilibrio de su balance.\nTomaste #{difference.round(2)}kcal/g demasiado."
		else puts "Strange ERROR"
		end
	end

end
