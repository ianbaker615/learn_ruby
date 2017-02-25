class Timer

	def initialize
		@time = 0
	end

	def seconds #getter
		@time
	end

	def seconds=(number) #setter
		@time=number
	end

		def padded(num)
			if num >= 0 && num < 10
				"0"+num.to_s
			else
				num.to_s
			end
		end

	def time_string
		if @time < 10
			"00:00:0" + @time.to_s
		elsif @time >= 10 && @time < 60
			"00:00:" + @time.to_s
		elsif @time >= 60 && @time < 3600
			"00:0" + (@time/60).to_s + ":0" + (@time%60).to_s
		elsif @time >= 3600
			"0" + (@time/3600).to_s + ":0" + ((4000%3600)/60).to_s + ":40"
		end
	end

end