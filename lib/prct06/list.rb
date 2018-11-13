Node = Struct.new(:value, :next, :prev)

class Liste
	attr_reader :size, :head, :tail

	def initialize()
		@head = nil
		@tail = nil
		@size = 0
	end

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
