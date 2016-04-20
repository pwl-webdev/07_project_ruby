def ftoc(input)
	input_f = input.to_f()
	return ((input_f -32)*5)/9
end

def ctof(input)
	input_f = input.to_f()
	return ((input_f*9)/5)+32
end
