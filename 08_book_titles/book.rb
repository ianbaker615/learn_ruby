class Book
	
	def title=(string) #setter method
		no_capital = %w(the a an and in of)
		string = string.split(' ')
		title = string.map do |item|
			if no_capital.include?(item)
				item
			else
				item = item[0].upcase + item[1..-1]
			end
		end
		string[0].capitalize!
		@title = title.join(' ')
	end

	def title #getter method
		@title
	end

end

