puts "Enter a starting year:"
start_year = gets.chomp.to_i
puts "Enter an ending year:"
end_year = gets.chomp.to_i

leap_years = (start_year..end_year).select { |e| e if e%4 == 0 unless (e%100 == 0 and e%400 != 0)}
if start_year > end_year
	puts "***   ERROR!    ***\n"+
		 "Years don't count backwards!"
else
	puts "The leap years between the years you entered are as follows: "
	puts leap_years
end