class Human
	#getter and setter
	attr_accessor :name, :surname, :sex, :age

	def initialize(name, surname, sex, age)
		@name, @surname, @sex, @age = name, surname, sex, age
	end

	def to_s
		"#{@name} #{@surname}"
	end
	def name_to_s
		"Name: #{@name}\n"
	end
	
	def surname_to_s
		"Surname: #{@surname}\n"
        end
	
	def sex_to_s
		"Sex: #{@sex}\n"
        end
	
	def age_to_s
		"Age: #{@age}\n"
        end
end



class Anthropometric < Human
	#getter and setter all in one
	#attr_accessor :name, :surname, :sex, :age, :height, :weight
=begin
	def initialize(name, surname, sex, age, height, weight, waist, hip, triceps, bicipital, subscapular, suprailiac, arm)
		super(name, surname, sex, age)
		@height, @weight, @waist, @hip, @triceps, @bicipital, @subscapular, @suprailiac, @arm = height, weight, waist, hip, triceps, bicipital, subscapular, suprailiac, arm
	end

	def height_to_s
		"Height: #{@height}\n"
        end
	
	def weight_to_s
		"Weight: #{@weight}\n"
        end

	def waist_to_s
		return uni_med(@waist)
        end
	
	def hip_to_s
		return uni_med(@hip)
	end
	
	def triceps_to_s
		return uni_med(@triceps)
        end
	
	def biceps_to_s
		return uni_med(@bicipital)
        end
	
	def subscapular_to_s
		return uni_med(@subscapular)
        end
	
	def suprailiac_to_s
		return uni_med(@suprailiac)
        end

	def arm_to_s
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
	    return (waist_to_s()/hip_to_s).round(2)
	end
	
	def porc_fat
		return (1.2 * imc + 0.23 * @age - 10.8 * @sex -5.4).round(2)
	end
end
=end

