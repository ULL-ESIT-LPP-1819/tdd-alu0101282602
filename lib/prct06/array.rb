class Array

	# Tarea 3 - for
	def kcal_for
		total = 0
		for i in (0...self.size)
			total += self[i].energy
		end
		total
	end

	# Tarea 3 for
	def sort_for
		sorted = [self[0]]
		for i in (1...self.size)
			actual = self[i]
			for j in (0..sorted.size)
				if (j == sorted.size)
					sorted.push(actual)
				elsif (actual.kcal_for < sorted[j].kcal_for)
					sorted.insert(j, actual)
					break
				end
			end
		end
		return sorted
	end

	# Tarea 4 each
	def kcal_each
		self.collect{|x| x.energy;}.reduce(:+).round(2)
	end

	# Tarea 4 each
	def sort_each
		sorted = [self[0]]
		self.each_with_index do |x, pos_x|
			if (pos_x != 0)
				sorted.each_with_index do |y, pos_y|
					if (pos_y == sorted.size-1)
						if (x.kcal_each < y.kcal_each)
							sorted.insert(pos_y, x)
							break
						else
							sorted.push(x)
							break
						end
					elsif (x.kcal_each < y.kcal_each)
						sorted.insert(pos_y, x)
						break
					end
				end
			end
		end
		return sorted
	end
end
