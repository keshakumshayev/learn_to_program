def logger(block_description, &block)
	puts "Beginning '#{block_description}'"
	puts
	block.call
	puts "Ending '#{block_description}'"
end

logger('25000 doublings') do
	number = 2**25000
	puts "#{number.to_s.length} digits"
	puts
	logger('count to a million') do
		number = 0
		1000000.times do
		number = number + 1
		end
		puts number.to_s
		puts
	end

	logger('25000 doublings') do
		number = 2**25000
		puts "#{number.to_s.length} digits"
		puts
		logger('another block') do
			puts
			puts
			puts
			puts 'this is the last block'
			puts
			puts
			puts
			

		end
	end
end