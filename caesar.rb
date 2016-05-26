def caesar_cipher(string, key)
	letters = ("a".."z").to_a
	big = ("A".."Z").to_a
	ciphered = []
	split = string.split("")
	split.each do |letter|
		if letters.include?(letter)
			x = letters.index(letter)
			y = x.to_i + key.to_i
			if y > 25
				y = y%25 - 1
			end
			ciphered.push(letters[y])
		elsif big.include?(letter)
			x = big.index(letter)
			y = x.to_i + key.to_i
			if y > 25
				y = y%25 - 1
			end
			ciphered.push(big[y])
		else
			ciphered.push(letter)
		end
	end
	puts
	puts ciphered.join
end
puts "Give me a string to cipher."
string = gets.chomp
puts "Give me the shift factor as well."
key = gets.chomp
caesar_cipher(string, key)
