# 
# Doubly Linked List
# Enumerable functions included
# 
# @author [roro]
#
class Liste
	include Enumerable

	Node = Struct.new(:value, :next, :prev)
	attr_reader :size, :head, :tail

	#
	# Initialize
	# Initializes all to nil
	# @return [nil] [nothing]
	def initialize()
		@head = nil
		@tail = nil
		@size = 0
	end

	# 
	# Each Method, necessarie for the enumeration
	# 
	# @return [obj.value] [gives back the value of the actual node]
	def each()
		act = @head
		while act != nil
			yield act.value
			act = act.next
		end
	end

	# 
	# Pushes a new Object at the end of the list.
	# @param obj [object] [Object that should be placed at the end of the list.]
	# 
	# @return [string] [Returns the String of the Object]
	def push(obj)
		a = Node.new(obj, nil, @tail)
		if size > 0
			@tail.next = a
		else
			@head = a
		end
		@tail = a
		@size += 1
		return a.value.to_s
	end

	# 
	# Pops the last Element of the list and prints it via the to_s method.
	#
	# @return [string] [Returns the String of the Object]
	def pop()
		if size > 0
			a = @tail.value
			@size -= 1
			@tail = @tail.prev
			if size > 0
				@tail.next = nil
			else
				@head = nil
			end
		else
			puts "No elements"
		end
		return a.to_s
	end

	def popb()
		if size > 0
			a = @head.value
			@size -= 1
			@head = @head.next
			if size > 0
				@head.prev = nil
			else
				@head = nil
			end
		else
			puts "No elements"
		end
		return a.to_s
	end

	# Tarea 3 - for
	def fors
		sorted = [@head.value]
		aux = @head
		sz = @size
		for i in (1...sz)
			aux = aux.next
			for j in (0..sorted.size)
				if (j == sorted.size)
					sorted.push(aux.value)
				elsif (aux.value < sorted[j])
					sorted.insert(j, aux.value)
					break
				end
			end
		end
		return sorted
	end

	# Tarea 4 - each
	def eachs
		sorted = [@head.value]
		self.each_with_index do |x, pos_x|
			if (pos_x != 0)
				sorted.each_with_index do |y, pos_y|
					if (pos_y == sorted.size - 1)
						if (x < y)
							sorted.insert(pos_y, x)
							break
						else
							sorted.push(x)
							break
						end
					elsif (x < y)
						sorted.insert(pos_y, x)
						break
					end
				end
			end
		end
		return sorted
	end

=begin	def popi(i)
		act = @head
		if i+1
		while i > 0
			act = act.next
			i += 1
		end

		act.prev.next = act.next
		act.next.prev = act.next
		end
=end
end
