def add(num1,num2)
	num1+num2
end

def subtract(num1,num2)
	num1-num2
end

def sum(array)
	result = 0
	if array.length == 0
		result = 0
	elsif array.length > 0 then
		array.each do |item|
			result += item
		end
	end
	return result
end

def mult(array)
	result = 1
	if array.length > 0 then
		array.each do |item|
			result = result * item
		end
		return result
	end
end

def power(num1,num2)
	return num1 ** num2
end

def factorial(num)
	result = 1
	while num > 0 do
		result *= num 
		num -= 1
	end
	return result

end
