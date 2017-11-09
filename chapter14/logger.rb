def logger(block_description, &block)
	puts "Beginning '#{block_description}'"
	block.call
	puts "Ending '#{block_description}'"
end

logger('25000 doublings') do
	number = 2**25000
	puts "#{number.to_s.length} digits"
	puts
	# That's the number of digits in this HUGE number.
	logger('count to a million') do
		number = 0
		1000000.times do
		number = number + 1
		end
		puts number
		puts
	end

	logger('25000 doublings') do
		number = 2**25000
		puts "#{number.to_s.length} digits"
		puts
		# That's the number of digits in this HUGE number.
	end

end