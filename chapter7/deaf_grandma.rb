puts "Say something to grandma, LOUDLY SO SHE CAN HEAR!"

while user_input = gets.chomp and user_input != user_input.upcase
	puts "HUH?! SPEAK UP, SONNY!"
end
if user_input == user_input.upcase
	puts "NO, NOT SINCE #{rand(1930..1950)}!"
end