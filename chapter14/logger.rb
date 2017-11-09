$depth = 0

def logger(block_description, &block)
	$depth += 1
	puts indent+"Beginning '#{block_description}'"
	puts
	block.call
	puts indent+"Ending '#{block_description}'"
	$depth -= 1
end

def indent
	'   '*($depth-1)
end

logger('25000 doublings') do
	number = 2**25000
	puts indent+"#{number.to_s.length} digits"
	puts
	# That's the number of digits in this HUGE number.
	logger('count to a million') do
		number = 0
		1000000.times do
		number = number + 1
		end
		puts indent+number.to_s
		puts
	end

	logger('25000 doublings') do
		number = 2**25000
		puts indent+"#{number.to_s.length} digits"
		puts
		logger('another block') do
			puts
			puts
			puts
			puts indent+'this is the last block'
			puts
			puts
			puts
			

		end
		# That's the number of digits in this HUGE number.
	end

end