class Nutrition
	#getter
	attr_reader :name, :surname, :sex, :age, :height, :weight
	#and the setter
	attr_writer :name, :surname, :sex, :age, :height, :weight


	def initialize(name, surname, sex, age, height, weight, waist, hip, triceps, bicipital, subscapular, suprailiac, arm)
		@name, @surname, @sex, @age, @height, @weight, @waist, @hip, @triceps, @bicipital, @subscapular, @suprailiac, @arm = name, surname, sex, age, height, weight, waist, hip, triceps, bicipital, subscapular, suprailiac, arm
	end
	

	def print_name
		"Name: #{@name}\n"
	end
	
	def print_surname
		"Surname: #{@surname}\n"
        end
	
	def print_sex
		"Sex: #{@sex}\n"
        end
	
	def print_age
		"Age: #{@age}\n"
        end
	
	def print_height
		"Height: #{@height}\n"
        end
	
	def print_weight
		"Weight: #{@weight}\n"
        end

	def print_waist
		return uni_med(@waist)
        end
	
	def print_hip
		return uni_med(@hip)
	end
	
	def print_triceps
		return uni_med(@triceps)
        end
	
	def print_biceps
		return uni_med(@bicipital)
        end
	
	def print_subscapular
		return uni_med(@subscapular)
        end
	
	def print_suprailiac
		return uni_med(@suprailiac)
        end

	def print_arm
		return uni_med(@arm)
        end

	def uni_med(li)
		sum, i = 0, 0
		while(i < li.length)
			sum += li[i]
			i += 1
		end
		return (sum/li.length).round(2)
	end
	
	def imc
		return (@weight/@height**2).round(2)
	end
	

	def rcc
	    return (@cintura/@cadera).round(2)
	end
	
	def porc_grasa
		return (1.2 * imc + 0.23 * @age - 10.8 * @sex -5.4).round(2)
	end
end

