puts "Say something to grandma, LOUDLY SO SHE CAN HEAR!"
bye_count = 0
while user_input = gets.chomp
	case user_input
	when 'BYE'
		bye_count += 1
		puts "HUH?! SPEAK UP, SONNY!"
		#puts bye_count <--- testing for 3 'BYE' 
		if bye_count == 3 #after insisting three times you make a run for it
			puts "HEY, WHERE ARE YOU GOING? WE JUST STARTED TALKING."
			break
		end
	else
		bye_count = 0
		if user_input != '' and user_input == user_input.upcase
			puts "NO, NOT SINCE #{rand(1930..1950)}!"
			#puts bye_count <--- testing for 3 'BYE' 
		elsif user_input != ''
			puts "HUH?! SPEAK UP, SONNY!"
			#puts bye_count <--- testing for 3 'BYE' 
		end
	end
end