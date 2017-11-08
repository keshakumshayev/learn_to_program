Integer.class_eval do
	def roman
		roman = ''
		number = self
		roman << 'M'*(number/1000)
		number -= 1000*(number/1000)
		
		if number/100 == 9
			roman << 'CM'
			number -= 900
		elsif number/100 == 4
			roman << 'CD'
			number -= 400
		end

		roman << 'D'*(number/500)
		number -= 500*(number/500)

		roman << 'C'*(number/100)
		number -= 100*(number/100)

		if number/10 == 9
			roman << 'XC'
			number -= 90
		elsif number/10 == 4
			roman << 'XL'
			number -= 40
		end

		roman << 'L'*(number/50)
		number -= 50*(number/50)

		roman << 'X'*(number/10)
		number -= 10*(number/10)
		
		if number == 9
			roman << 'IX'
			number -= 9
		elsif number == 4
			roman << 'IV'
			number -= 4
		end

		roman << 'V'*(number/5)
		number -= 5*(number/5)

		roman << 'I'*number

		roman
	end
end

puts 1449.roman