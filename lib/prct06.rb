#require "prct06/version"

module Prct06
  class Error < StandardError; end
end

class Nutri
	attr_reader :name, :fat, :sfats, :hydrates, :sugar, :protein, :salt

	def initialize(name, fat, sfats, hydrates, sugar, protein, salt)
		@name, @fat, @sfats, @hydrates, @sugar, @protein, @salt = name, fat, sfats, hydrates, sugar, protein, salt
	end

	def label
		puts "Name: \t\t#{@name}\n"
		puts "fat: \t\t#{@fat}\n"
		puts "sat. fats: \t#{@sfats}\n"
		puts "hydrates: \t#{@hydrates}\n"
		puts "sugar: \t\t#{@sugar}\n"
		puts "protein: \t#{@protein}\n"
		puts "salt: \t\t#{@salt}\n"
	end
end

a = Nutri.new("servus", 2,3,4,5,6,7)
a.label
