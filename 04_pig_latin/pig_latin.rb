def translate(input)
	words = input.split(" ")
	to_return = []
	words.each do |w|
		samogloski = []
		spolgloski = []
		flag = false
		w = w.split("")
		w.each do |i|
			if i == "a" || i == "e" || i == "i" || i == "o" || i == "u" || flag
				if(i == "u" && spolgloski[-1] == "q")
					spolgloski << i
				else
					flag = true
					samogloski << i
				end
			else
				spolgloski << i
			end
		end
		to_return << samogloski.join("")+spolgloski.join("")+"ay"
	end
	return to_return.join(" ")
end