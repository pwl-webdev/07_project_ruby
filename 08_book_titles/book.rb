class Book
	attr_reader :title

	def title= title
		@title = capitalize(title)
	end

	def capitalize(input)
		to_return = []
		inp = input.split(" ")
		inp.each do |i|
			if(i.upcase() == 'AND' || i.upcase() == 'THE' || i.upcase() == 'OVER' || i.upcase() == 'IN' || i.upcase()== 'OF' || i.upcase()=='A'|| i.upcase()=='AN')
				to_return << i
			else
				to_return << i.capitalize()
			end
		end
		to_return[0] = to_return[0].capitalize()
		to_return = to_return.join(" ")
		return to_return
	end
end