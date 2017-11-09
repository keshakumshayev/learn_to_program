def grandfather_clock(&block)
	hour = (Time.new.hour)%12
	hour = hour == 0 ? 12 : hour

	hour.times do
		block.call
	end
end

grandfather_clock do
	puts 'DONG!'
end