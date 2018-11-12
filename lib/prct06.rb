#require "prct06/version"

module Prct06
	class Error < StandardError; end
end

class Nutri
	attr_reader :name, :fat, :sfats, :hydrates, :sugar, :protein, :salt

	def initialize(name, fat, sfats, hydrates, sugar, protein, salt)
		@name, @fat, @sfats, @hydrates, @sugar, @protein, @salt = name, fat, sfats, hydrates, sugar, protein, salt
	end

	def sname
		"#{@name}"
	end
	def sfat
		"#{@fat}"
	end
	def ssfats
		"#{@sfats}"
	end
	def shydrates
		"#{@hydrates}"
	end
	def ssugar
		"#{@sugar}"
	end
	def sprotein
		"#{@protein}"
	end
	def ssalt
		"#{@salt}"
	end

	def label
		return "Name: \t\t#{@name}\nfat: \t\t#{@fat}\nsat.fats: \t#{@sfats}\nhydrates: \t#{@hydrates}\nsugar: \t\t#{@sugar}\nprotein: \t#{@protein}\nsalt: \t\t#{@salt}\n"
	end
	def energy
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
		return "#{s1.round(2)} kJ/g / #{s2.round(2)} kcal/g\n"
	end
end

