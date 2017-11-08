def next_birthday(person)
	### I've added a space at the beginning of the birthday list
	### in order to take advantage of the strip! method.
	birth_chart = 
	" Christopher Alexander, Oct 4, 1936
	Christopher Lambert, Mar 29, 1957
	Christopher Lee, May 27, 1922
	Christopher Lloyd, Oct 22, 1938
	Christopher Pine, Aug 3, 1976
	Christopher Plummer, Dec 13, 1927
	Christopher Walken, Mar 31, 1943
	The King of Spain, Jan 5, 1938"

	names = birth_chart.map{|x| x.split(',')[0].strip!}
	birth_years = birth_chart.map{|x| x.split(',')[-1].strip!}
	birth_months = birth_chart.map{|x| x.split(',')[1].split(' ')[0]}
	birth_days = birth_chart.map{|x| x.split(',')[1].split(' ')[1]}

	if names.include? person
		idx = names.index(person)
		birthday = Time.local(birth_years[idx],birth_months[idx],birth_days[idx])
		
		year_of_next_bday = (1+birth_years[idx].to_i+(Time.now-birthday).to_i/(60*60*24*365))
		next_bday = Time.local(year_of_next_bday,birth_months[idx],birth_days[idx])
	end
	next_bday
end


person = 'Christopher Plummer'

puts "#{person}'s next birthday is: "
puts next_birthday('Christopher Plummer')