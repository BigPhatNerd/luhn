module Luhn
	def self.is_valid?(number)
		sum = 0
		reverse_number = number.to_s.reverse.split('')
		reverse_to_integer = reverse_number.each { |x| x.to_i }
		reverse_to_integer.each_with_index do |value, index|
			if index.odd? 

				value = value.to_i
				value *= 2

				if value >= 10
					value -=  9
					sum += value					
					
				else
					sum += value
				end
			else
				value = value.to_i
				sum += value
			end	
		end
		sum
		if sum % 10 == 0
			 true
		else 
			 false 
		end
	end
end



puts Luhn.is_valid?(4194560385008504)
puts Luhn.is_valid?(4194560385008505)
puts Luhn.is_valid?(377681478627336)
puts Luhn.is_valid?(377681478627337)



