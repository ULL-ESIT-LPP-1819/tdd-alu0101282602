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
