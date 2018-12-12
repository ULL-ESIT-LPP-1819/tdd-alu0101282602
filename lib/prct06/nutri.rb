# 
# Manages all the informations a normal etiquett contains.
# 
# @author [roro]

class Nutri
	# 
	# Include trhe very important Comparable to be able to compare
	# 
	# @author NotME
	include Comparable

	attr_reader :name, :fat, :sfats, :hydrates, :sugar, :protein, :salt, :energy


	#
	# Defines wich value should be compared
	# @param other [object] [another object]
	#
	# @return [bool] [True or False whether the compatrison is correct or not.]
	def <=>(other)
		@name <=> other.name
	end
	

	# 
	# [initialize the obj]
	# @param name [string] [Name]
	# @param fat [int] [Fat value]
	# @param sfats [int] [Saturates Fat value]
	# @param hydrates [int] [Hydrates value]
	# @param sugar [int] [Sugar value]
	# @param protein [int] [Protein value]
	# @param salt [int] [Salt Value]
	# 
	# @return [nil] [there is nothing to return]
	def initialize(name, fat, sfats, hydrates, sugar, protein, salt)
		@name, @fat, @sfats, @hydrates, @sugar, @protein, @salt = name, fat, sfats, hydrates, sugar, protein, salt
		@energy = 0.0
		senergy()
	end

	# 
	# Prints name as a string.
	# 
	# @return [string] [name as a string]
	def sname
		"#{@name}"
	end

	# 
	# Prints fat as a string.
	# 
	# @return [string] [fat as a string]
	def sfat
		"#{@fat}"
	end

	# 
	# Prints sfats as a string.
	# 
	# @return [string] [sfats as a string]
	def ssfats
		"#{@sfats}"
	end

	# 
	# Prints hydrates as a string.
	# 
	# @return [string] [hydrates as a string]
	def shydrates
		"#{@hydrates}"
	end

	# 
	# Prints sugar as a string.
	# 
	# @return [string] [sugar as a string]
	def ssugar
		"#{@sugar}"
	end

	# 
	# Prints protein as a string.
	# 
	# @return [string] [protein as a string]
	def sprotein
		"#{@protein}"
	end

	# 
	# Prints salt as a string.
	# 
	# @return [string] [salt as a string]
	def ssalt
		"#{@salt}"
	end

	# 
	# Prints the whole etiquetta as a string.
	# 
	# @return [string] [Etiquetta as a string]
	def to_s
		return "Name: \t\t#{@name}\nfat: \t\t#{@fat}\nsat.fats: \t#{@sfats}\nhydrates: \t#{@hydrates}\nsugar: \t\t#{@sugar}\nprotein: \t#{@protein}\nsalt: \t\t#{@salt}\n"
	end

	# 
	# Prints the calculated energy as a string.
	# 
	# @return [string] [Energy as a string]
	def senergy
		v1 = [@fat, @hydrates, @protein, @salt]
		v2 = [37, 17, 17, 25]
		v3 = [9, 4, 4, 6]

		s1 = 0
		s2 = 0
		i = 0
		while (i < v1.length)
			s1 += v1[i] * v2[i]
			s2 += v1[i] * v3[i]
			i += 1
		end
		@energy = s2
		return "#{s1.round(2)} kJ/g / #{s2.round(2)} kcal/g\n"
	end
end
