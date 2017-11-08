Dir.chdir('/Users/kesha/Desktop')
# First we find all of the pictures to be moved.
pic_names = Dir['*.png']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
# This will be our counter. We'll start at 1 today,
# though normally I like to count from 0.
pic_number = 1

pic_names.each do |name|
	print '.' # This is our "progress bar".
	new_name = if pic_number < 10
		if File.exist?("#{batch_name}_0#{pic_number}.png") == false
			"#{batch_name}_0#{pic_number}.png"
		else
			puts "\nERROR! File with that name exists."+"\n"+
				 "#{pic_number} picture(s) successfully renamed. Ending process."
			break
			"#{batch_name}_0#{pic_number}_copy.png"
		end	
	else
		if File.exist?("#{batch_name}_#{pic_number}.png") == false
			"#{batch_name}_#{pic_number}.png"
		else
			puts "\nERROR! File with that name exists."+"\n"+
				 "#{pic_number} pictures successfully renamed. Ending process."
			break
			"#{batch_name}_#{pic_number}_copy.png"
		end	
	end

	# Now where were we? Oh, yeah...

	File.rename(name, new_name)

	# Finally, we increment the counter.
	pic_number = pic_number + 1
end
puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'