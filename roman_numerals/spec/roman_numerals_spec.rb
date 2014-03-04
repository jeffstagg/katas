require 'rspec/given'
require 'roman_numerals'

RSpec::Given.use_natural_assertions

describe RomanNumeralsConverter do
	
	Given(:converter) { RomanNumeralsConverter.new }

	Then { converter.convert(1).should == "I" }
	Then { converter.convert(2).should == "II" }
	Then { converter.convert(3).should == "III" }
	Then { converter.convert(4).should == "IV" }
	Then { converter.convert(5).should == "V" }
	Then { converter.convert(6).should == "VI" }
	Then { converter.convert(7).should == "VII" }
	Then { converter.convert(8).should == "VIII" }
	Then { converter.convert(9).should == "IX" }
	Then { converter.convert(10).should == "X" }
	Then { converter.convert(40).should == "XL" }
	Then { converter.convert(49).should == "XLIX" }
	Then { converter.convert(50).should == "L" }
	Then { converter.convert(89).should == "LXXXIX"}
	Then { converter.convert(90).should == "XC" }
	Then { converter.convert(99).should == "XCIX"}
	Then { converter.convert(100).should == "C" }

end