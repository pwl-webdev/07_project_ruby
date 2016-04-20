def add (a, b)
	return a+b
end

def subtract (a, b)
	return a-b
end

def sum(c)
	summed = 0
	c.each {|i|
		summed = summed + i
	}
	return summed
end
