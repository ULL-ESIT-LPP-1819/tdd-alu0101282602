class Array


	
    def fors
        sorted = [self[0]]
        for i in (1...self.size)
            act = self[i]
            for j in (0..sorted.size)
                if (j == sorted.size)
                    sorted.push(act)
                elsif (act.for_helper < sorted[j].for_helper)
                    sorted.insert(j, act)
                    break
                end
            end
        end
        return sorted
	end
	
    def eachs
        sorted = [self[0]]
        self.each_with_index do |x, pos_x|
            if (pos_x != 0)
                sorted.each_with_index do |y, pos_y|
                    if (pos_y == sorted.size-1)
                        if (x.each_helper < y.each_helper)
                            sorted.insert(pos_y, x)
                            break
                        else
                            sorted.push(x)
                            break
                        end
                    elsif (x.each_helper < y.each_helper)
                        sorted.insert(pos_y, x)
                        break
                    end
                end
            end
        end
        return sorted
	end
	
	def for_helper
        sum = 0
        for i in (0...self.size)
            sum += self[i].energy
        end
        return sum
	end

	def each_helper
        return self.collect{|food| food.energy;}.reduce(:+).round(2)
	end
end