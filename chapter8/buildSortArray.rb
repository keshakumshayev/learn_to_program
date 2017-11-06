puts "Enter some words, and I'll sort them."
word_array = []
while user_input = gets.chomp
	case user_input
	when ''
		puts "Here are your words, sorted alphabetically:"
		puts word_array.sort
		break
	else
		word_array.push(user_input.capitalize) ##capitalized to facilitate alphabetical sorting
	end
end