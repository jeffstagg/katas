class RomanNumeralsConverter
	
	CONVERSION_TABLE = [
		[100,'C'],
		[90,'XC'],
		[50,'L'],
		[40,'XL'],
		[10,'X'],
		[9,'IX'],
		[5,'V'],
		[4,'IV'],
		[1,'I']
	]

	def convert num

		result = ''

		CONVERSION_TABLE.each do |number,glyph|
			while num >= number
				result << glyph
				num -= number
			end
		end
		
		result
	
	end
end