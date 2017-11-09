def profile block_description, &block
	start_time = Time.new
	block.call
	duration = Time.new - start_time
	if true ### CHANGE TO FALSE TO DISABLE PROFILING
		puts "#{block_description}: #{duration} seconds"
	end
end

profile('25000 doublings') do
	number = 2**25000
	puts "#{number.to_s.length} digits"
	# That's the number of digits in this HUGE number.
end


profile('count to a million') do
	number = 0
	1000000.times do
	number = number + 1
	end
end