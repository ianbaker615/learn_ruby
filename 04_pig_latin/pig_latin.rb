def translate(string)
	alpha = ('a'..'z').to_a
	vowels = %w(a e i o u)
	consonants = alpha - vowels
	string = string.split(" ")
	new_word = ""

	string.map do |word|

		if word[0..1].include?('qu')
			new_word += word[2..-1] + word[0..1] + 'ay '
		elsif word[1..2].include?('qu') && consonants.include?(word[0])
			new_word += word [3..-1] + word[0..2] + 'ay '	
		elsif vowels.include?(word[0])
			new_word += word + 'ay '
		elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
			new_word += word[3..-1] + word[0..2] + 'ay '	
		elsif consonants.include?(word[0]) && consonants.include?(word[1])
			new_word += word[2..-1] + word[0..1] + 'ay '
		elsif consonants.include?(word[0])
			new_word += word[1..-1] + word[0]+'ay '
		end
	end
	new_word.strip

end