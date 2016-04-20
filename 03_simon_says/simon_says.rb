def echo(input)
	return input
end

def shout(input)
	return input.upcase()
end

def repeat(input, repetition = 2)
	to_return = input
	(repetition - 1).times do
		to_return = to_return + " " + input
	end
	return to_return
end

def start_of_word(input, noChar = 1)
	return input[0..noChar-1]
end

def first_word(input)
	to_return = input.split(" ")
	return to_return[0]
end

def titleize(input)
	to_return = []
	inp = input.split(" ")
	inp.each do |i|
		if(i.upcase() == 'AND' || i.upcase() == 'THE' || i.upcase() == 'OVER')
			to_return << i
		else
			to_return << i.capitalize()
		end
	end
	to_return[0] = to_return[0].capitalize()
	to_return = to_return.join(" ")
	return to_return
end
