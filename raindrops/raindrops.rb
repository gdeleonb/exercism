class Raindrops
  output = ''

	def self.convert(number)
		if (number % 5 != 0) && ( number % 3 != 0) && (number % 7 != 0)
			output = number.to_s
		end
		
	  if number % 3 == 0
			output = output.to_s + 'Pling'
		end
		
		if number % 5 == 0
			output = output.to_s + 'Plang'
		end
		
		if number % 7 == 0
			output = output.to_s + 'Plong'
		end

		output
	end
end