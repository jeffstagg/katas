class FizzBuzz

  def convert(start, finish)
		
    result = ''
		
    (start..finish).each do |num|
      result << fizzle(num) + " "
    end
    result.strip!
		
    return result
  end

  def fizzle(num)
		
    if (num % 3 == 0) || (num % 5 == 0)
      result = ''
      result << (num % 3 == 0 ? 'Fizz' : '')
      result << (num % 5 == 0 ? 'Buzz' : '')
      return result
    end

    return num.to_s
  end

end

