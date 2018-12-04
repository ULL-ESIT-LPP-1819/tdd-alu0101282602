# 
# Human Object with very basic data.
# 
# @author roro
# 
class Human
	
	# 
	# Includes thge VIModule Comparable to be able to compare.
	#
	# @author notME
	#
	include Comparable

	#getter and setter
	attr_accessor :name, :surname, :sex, :age
	
	# 
	# [Sets how and what to compare]
	# @param other [object] [Person object]
	# 
	# @return [bool] [True or False depending whether the comparison is true or not.]
	def <=>(other)
		@name <=> other.name
	end

	#
  	# Initialize
  	# @param name [char] [name ]
  	# @param surname [char] [surname]
	# @param sex [inr] [sex: 0= male, 1=female]  	
	# @param age [int] [age]
  	#
  	# @return [nil] [nothing]
	def initialize(name, surname, sex, age)
		@name, @surname, @sex, @age = name, surname, sex, age
	end


	#
	# Returns a string containing Name and Surname of a Human
	#
	# @return [char] [Name and Surname as string.]
	def to_s
		"#{@name} #{@surname}"
	end

	#
	# Returns a string containing Name Human
	#
	# @return [char] [Name as string.]
	def name_to_s
		"Name: #{@name}\n"
	end

	#
	# Returns a string containing Surname of a Human
	#
	# @return [char] [Surname as string.]
	def surname_to_s
		"Surname: #{@surname}\n"
	end

	#
	# Returns a string containing Sex of a Human
	#
	# @return [char] [Sex as string.]
	def sex_to_s
		"Sex: #{@sex}\n"
	end

	#
	# Returns a string containing Age of a Human
	#
	# @return [char] [Age as string.]
	def age_to_s
		"Age: #{@age}\n"
	end
end


# 
# Anthropometric Object is a Child class from the Human with extented data sobre la salud.
# 
# @author [roro]
# 
class Anthropometric < Human
	#getter and setter all in one
	attr_accessor :name, :surname, :sex, :age, :height, :weight

	#
  	# Initialize
  	# @param name [char] [name ]
  	# @param surname [char] [surname]
	# @param sex [inr] [sex: 0= male, 1=female]  	
	# @param age [int] [age]
	# @param height [float] [height]
	# @param weight [float] [weight]
	# @param waist [list] [waist]
	# @param hip [list] [hip]
	# @param triceps [list] [triceps]
	# @param bicipital [list] [bicipital]
	# @param subscapular [list] [subscapular]
	# @param suprailiac [list] [suprailiac]
	# @param arm [list] [arm]
  	#
  	# @return [nil] [nothing]
	def initialize(name, surname, sex, age, height, weight, waist, hip, triceps, bicipital, subscapular, suprailiac, arm)
		super(name, surname, sex, age)
		@height, @weight, @waist, @hip, @triceps, @bicipital, @subscapular, @suprailiac, @arm = height, weight, waist, hip, triceps, bicipital, subscapular, suprailiac, arm
	end

	#
	# Returns a string containing Height of an Anthropometric
	#
	# @return [char] [Height as string.]
	def height_to_s
		"Height: #{@height}\n"
	end

	#
	# Returns a string containing Weight of an Anthropometric
	#
	# @return [char] [Weight as string.]
	def weight_to_s
		"Weight: #{@weight}\n"
	end

	#
	# Returns a string containing Waist of an Anthropometric
	#
	# @return [char] [Waist as string.]
	def waist_to_s
		return uni_med(@waist)
	end

	#
	# Returns a string containing Hip of an Anthropometric
	#
	# @return [char] [Hip as string.]
	def hip_to_s
		return uni_med(@hip)
	end

	#
	# Returns a string containing Triceps of an Anthropometric
	#
	# @return [char] [Triceps as string.]
	def triceps_to_s
		return uni_med(@triceps)
	end

	#
	# Returns a string containing Biceps of an Anthropometric
	#
	# @return [char] [Biceps as string.]
	def biceps_to_s
		return uni_med(@bicipital)
	end

	#
	# Returns a string containing Subcapular of an Anthropometric
	#
	# @return [char] [Subcapular as string.]
	def subscapular_to_s
		return uni_med(@subscapular)
	end

	#
	# Returns a string containing Suprailiac of an Anthropometric
	#
	# @return [char] [Suprailiac as string.]
	def suprailiac_to_s
		return uni_med(@suprailiac)
	end

	#
	# Returns a string containing Triceps of an Anthropometric
	#
	# @return [char] [Triceps as string.]
	def arm_to_s
		return uni_med(@arm)
	end

	# 
	# Universal Median Calculator
	# @param li [list] [List of Numbers of which the median should be calculated]
	# 
	# @return [float] [Returns Median]
	def uni_med(li)
		sum, i = 0, 0
		while(i < li.length)
			sum += li[i]
			i += 1
		end
		return (sum/li.length).round(2)
	end

	#
	# Returns the calculated IMC of an Anthropometric
	#
	# @return [char] [IMC of Anthropometric]
	def imc
		return (@weight/@height**2).round(2)
	end

	#
	# Returns the calculated RCC of an Anthropometric
	#
	# @return [char] [RCC of Anthropometric]
	def rcc
		return (waist_to_s()/hip_to_s).round(2)
	end

	#
	# Returns the calculated percentage of fat of an Anthropometric
	#
	# @return [char] [Percentage of fat of an Anthropometric]
	def porc_fat
		return (1.2 * imc + 0.23 * @age - 10.8 * @sex -5.4).round(2)
	end
end
