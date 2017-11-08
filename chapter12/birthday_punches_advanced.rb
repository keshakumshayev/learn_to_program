#spankings seemed a bit extreme so I decided to use birthday punches
#which are common where i'm from

def get_year
	leap = 0
	puts "What year were you born in?"
	year = gets.chomp.to_i
	until year < Time.now.year
		puts "You couldn't have been born then! It's only #{Time.now.year} now."+"\n"+
			"Please enter your actual year of birth."
		year = gets.chomp.to_i
	end
	year
end

def is_leap_year(year)
	if year%4 == 0 and not (year%100 == 0 and year%400 != 0)
		true	
	else
		false 
	end
end

def get_month
	puts "What month were you born in?"
	month = gets.chomp.to_i
	until month.between?(1,12)
		puts "Please enter a valid month."
		month = gets.chomp.to_i
	end
	month
end

def get_day
	puts "What day were you born in?"
	day = gets.chomp.to_i
	day
end

def get_age
	year = get_year
	month = get_month
	if month == 1 || month == 3 || month == 5 ||
 		month == 7 || month == 8 || month == 10 || month == 12
 		day = get_day
 		until day.between?(1,31)
			puts "Please enter a valid day."
			day = get_day
		end
		day
	elsif month == 4 || month == 6 ||
			month == 9 || month == 11
		day = get_day
		until day.between?(1,30)
			puts "Please enter a valid day."
			day = get_day
		end
		day
	elsif month == 2
		if is_leap_year(year)
			day = get_day
			until day.between?(1,29)
				puts "Please enter a valid day."
				day = get_day
			end
			day
		else
			day = get_day
			until day.between?(1,28)
				puts "Please enter a valid day."
				day = get_day
			end
			day
		end
	end

	if (Time.new - Time.local(year, month, day)).to_i/(60*60*24*365) > 115
		puts "People don't live that long, tell me your real date of birth."
		get_age
	else
		(Time.new - Time.local(year, month, day)).to_i/(60*60*24*365)
	end
end

years_old = get_age
puts "So you're #{years_old} years old."
puts '. . . . .'
puts
puts '. . .'
puts
if years_old > 60  # i feel bead punching people over the age of 60 so heres a little addition to my code.
	puts "You're too old. I'll save the birthday punches for someone who can take them!"
else 
	years_old.times{puts 'PUNCH!'}
end