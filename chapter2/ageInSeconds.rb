require "date"
#my date of birth parsed as a DateTime object
my_birthday = DateTime.strptime('19/05/1995 00:00:00', '%d/%m/%Y %H:%M:%S')

#my age in days, multiplied by hours, minutes, and seconds
my_age_in_seconds = ((DateTime.now - my_birthday) * 24 * 60 * 60).to_i 

puts "Hi! My name is Kesha, and I am #{my_age_in_seconds} seconds old."