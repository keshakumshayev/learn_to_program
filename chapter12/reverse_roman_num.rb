def roman_to_int(roman)
	number = 0
	roman = roman.downcase
	
	if roman.include? 'cm'
		number += 900
		roman = roman.gsub('cm','')
	end
	if roman.include? 'cd'
		number += 400
		roman = roman.gsub('cd','')
	end
	if roman.include? 'xc'
		number += 90
		roman = roman.gsub('xc','')
	end
	if roman.include? 'xl'
		number += 40
		roman = roman.gsub('xl','')
	end
	if roman.include? 'ix'
		number += 9
		roman = roman.gsub('ix','')
	end
	if roman.include? 'iv'
		number += 4
		roman = roman.gsub('iv','')
	end

	number += roman.count('m')*1000
	number += roman.count('d')*500
	number += roman.count('c')*100
	number += roman.count('l')*50
	number += roman.count('x')*10
	number += roman.count('v')*5
	number += roman.count('i')

	number
end




roman_num = 'mcmxcix'
puts "#{roman_num.upcase} is: "
puts(roman_to_int(roman_num))