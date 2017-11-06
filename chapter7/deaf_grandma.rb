puts "Say something to grandma, LOUDLY SO SHE CAN HEAR!"

while true
	user_input = gets.chomp

	if user_input != '' and user_input != user_input.upcase
		puts "HUH?! SPEAK UP, SONNY!"
	elsif user_input != '' and user_input == user_input.upcase and user_input != 'BYE'
		puts "NO, NOT SINCE #{rand(1930..1950)}!"
	elsif user_input == 'BYE'
		break
	end
end