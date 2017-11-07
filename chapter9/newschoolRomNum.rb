def roman_num(num)
	roman = ''
	roman << 'M'*(num/1000)
	num -= 1000*(num/1000)
	
	if num/100 == 9
		roman << 'CM'
		num -= 900
	elsif num/100 == 4
		roman << 'CD'
		num -= 400
	end

	roman << 'D'*(num/500)
	num -= 500*(num/500)

	roman << 'C'*(num/100)
	num -= 100*(num/100)

	if num/10 == 9
		roman << 'XC'
		num -= 90
	elsif num/10 == 4
		roman << 'XL'
		num -= 40
	end

	roman << 'L'*(num/50)
	num -= 50*(num/50)

	roman << 'X'*(num/10)
	num -= 10*(num/10)
	
	if num == 9
		roman << 'IX'
		num -= 9
	elsif num == 4
		roman << 'IV'
		num -= 4
	end

	roman << 'V'*(num/5)
	num -= 5*(num/5)

	roman << 'I'*num

	roman
end



puts(roman_num(448))