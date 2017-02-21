def salad_cipher (message, key)
	encrypted = message.split("").map do |letter|
		letter_number = letter.ord

		if letter =~ /\W/
			letter = letter
		elsif letter.upcase.ord - key.to_i < 65
			letter = (letter_number + 26 - key.to_i).chr
		elsif letter.upcase.ord.between?(66,99)
			letter = (letter_number - key.to_i).chr
		end
	end
end

puts "enter message."
	string = gets.chomp
puts "enter key factor"
	factor = gets.chomp
puts "this is the message, encrypted."
puts salad_cipher(string, factor)