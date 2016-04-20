class Timer
	attr_reader :seconds


	def initialize(sec=0)
		@seconds = sec
	end

	def seconds= seconds
		@seconds = seconds;
	end

	def time_string()
		s_seconds = "00"
		s_minutes = "00"
		s_hours = "00"

		if @seconds % 60 > 0
			num = @seconds % 60
			s_seconds = num.to_s().rjust(2,"0")
		end
		if @seconds/(60) > 0 && @seconds/(60) < 60
			num = @seconds / (60)
			s_minutes = num.to_s().rjust(2,"0")
		elsif @seconds/(60) > 60
			num = ((@seconds - s_seconds.to_i())/60)- 60
			s_minutes = num.to_s().rjust(2,"0")
		end
		if @seconds / (60*60) > 0 && @seconds / (60*60) < 60
			num = @seconds / (60*60)
			s_hours = num.to_s().rjust(2,"0")
		end
		return s_hours+":"+s_minutes+":"+s_seconds
	end
end