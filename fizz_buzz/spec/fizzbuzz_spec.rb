require 'rspec'
require 'fizzbuzz'

describe 'FizzBuzz' do

  let(:fizzbuzz) { FizzBuzz.new }

  #individual characters
  context 'Fizzle function' do
    it 'prints Fizz in place of numbers divisible by 3' do
      fizzbuzz.fizzle(3).should eq('Fizz')
      fizzbuzz.fizzle(6).should eq('Fizz')
      fizzbuzz.fizzle(9).should eq('Fizz')
    end

    it 'prints Buzz in place of numbers divisible by 5' do
      fizzbuzz.fizzle(5).should eq('Buzz')
      fizzbuzz.fizzle(10).should eq('Buzz')
      fizzbuzz.fizzle(20).should eq('Buzz')
    end

    it 'prints FizzBuzz in place of numbers divisible by both 3 and 5' do
      fizzbuzz.fizzle(15).should eq('FizzBuzz')
      fizzbuzz.fizzle(30).should eq('FizzBuzz')
      fizzbuzz.fizzle(45).should eq('FizzBuzz')
    end
		
    it 'prints the number if it is neither divisible by 3 or 5' do
      fizzbuzz.fizzle(16).should eq('16')
      fizzbuzz.fizzle(17).should eq('17')
      fizzbuzz.fizzle(19).should eq('19')
    end
  end

  #full strings
  context 'When given 2 characters as input' do
		
    it 'prints characters from x to y, substituting fizzbuzz rules' do
      fizzbuzz.convert(0,10).should
        eq ('0 1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz')
      fizzbuzz.convert(11,20).should
        eq('11 Fizz 13 14 FizzBuzz 16 17 Fizz 19 Buzz')
      fizzbuzz.convert(21,30).should
        eq('Fizz 22 23 Fizz Buzz 26 Fizz 28 29 FizzBuzz')
      fizzbuzz.convert(31,40).should
        eq('31 32 Fizz 34 Buzz Fizz 37 38 Fizz Buzz')
      fizzbuzz.convert(41,50).should
        eq('41 Fizz 43 44 FizzBuzz 46 47 Fizz 49 Buzz')
      fizzbuzz.convert(51,60).should
        eq ('Fizz 52 53 Fizz Buzz 56 Fizz 58 59 FizzBuzz')
      fizzbuzz.convert(61,70).should
         eq('61 62 Fizz 64 Buzz Fizz 67 68 Fizz Buzz')
      fizzbuzz.convert(71,80).should
        eq('71 Fizz 73 74 FizzBuzz 76 77 Fizz 79 Buzz')
      fizzbuzz.convert(81,90).should
        eq('Fizz 82 83 Fizz Buzz 86 Fizz 88 89 FizzBuzz')
      fizzbuzz.convert(91,100).should
        eq('91 92 Fizz 94 Buzz Fizz 97 98 Fizz Buzz')	
    end
  end
end