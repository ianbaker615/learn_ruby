def echo(string)
	return string
end

def shout(string)
	return string.upcase
end

def repeat(string, number = 2)
	return ([string] * number).join(" ")
end

def start_of_word (string, number)
	if number == 1 then
		return string[number-1]
	elsif number > 1
		return string[0..(number-1)]
	end	
end

def first_word(string)
	return string[0..(string.index(" ") - 1)]
end

def titleize(string)
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
