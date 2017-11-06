puts "Say something to grandma, LOUDLY SO SHE CAN HEAR!"

#written in ruby v1.8.7 using choice instead of rand

while user_input = gets.chomp and user_input != user_input.upcase
	puts "HUH?! SPEAK UP, SONNY!"
end
if user_input == user_input.upcase
	puts "NO, NOT SINCE #{(1930..1950).map{|e|e}.choice}!"
end