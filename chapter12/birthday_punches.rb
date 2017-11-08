#spankings seemed a bit extreme so I decided to use birthday punches
#which are common where i'm from

###ASSUMES CORRECT INPUT IS GIVEN!!!
def get_age
	puts "What year were you born in?"
	year = gets.chomp.to_i
	puts "What month were you born in?"
	month = gets.chomp.to_i
	puts "What day of that month were you born on?"
	day = gets.chomp.to_i

	years_old = (Time.new - Time.local(year, month, day)).to_i/(60*60*24*365)
	years_old
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