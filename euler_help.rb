module EulerHelp
  include Math

  LEXICON = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 
            10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 
            20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety', 1000 => 'onethousand'}

  def num_in_words(num)
    #this produces no hyphens or spaces
    len = num.to_s.length
    num_array = num.to_s.split('')
    if num < 20
      LEXICON[num]
    elsif len == 2
      if num_array.last == '0'
        LEXICON[num]
      else
        "#{LEXICON[num_array[0].to_i * 10]}#{LEXICON[num_array[1].to_i]}"
      end
    elsif len == 3
      if num_array[1] == '0' && num_array[2] == '0'
        "#{LEXICON[num_array[0].to_i]}hundred"
      elsif (num_array[1].to_i * 10) + num_array[2].to_i < 20 && (num_array[1].to_i * 10) + num_array[2].to_i > 10
        "#{LEXICON[num_array[0].to_i]}hundredand#{LEXICON[num_array[1].to_i * 10 + num_array[2].to_i]}"
      else
        if num_array.last == '0'
          "#{LEXICON[num_array[0].to_i]}hundredand#{LEXICON[num_array[1].to_i * 10]}"
        else
          "#{LEXICON[num_array[0].to_i]}hundredand#{LEXICON[num_array[1].to_i * 10]}#{LEXICON[num_array[2].to_i]}"
        end
      end
    else
    LEXICON[1000]
    end
  end

  def add_commas
    self.to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
  end

  def fib_sequence_below(number, start_array=[1,1])
    # This will return an array of fibonacci
    # numbers below number and starting with
    # the value of start_array set to an array
    # usually [1,1]
    fib_sequence = start_array
    while fib_sequence[-2] + fib_sequence[-1] < number  
      fib_sequence << fib_sequence[-2] + fib_sequence[-1]
    end
    fib_sequence
  end

  def is_prime?(number)
    divisible_by = []
    root = sqrt(number)
    (1..root).each do |x|
      divisible_by << x if number % x == 0 
      break if divisible_by.length > 2
    end
    divisible_by.push number
    number != 1 && divisible_by == [1,number] ? true : false
  end

   def factor_of?(number, i)
    number % i == 0 ? true : false
  end

  def factors_of(number)
    i = 2
    factors = [1, number]
    while i * i < number
      if factor_of?(number, i)
        factors << number / i
        factors << i
      end
      i += 1
    end
    factors
  end

  def prime_factors_of(number)
    i = 2
    factors = []
    until i * i > number
      if factor_of?(number, i)
        factors << number / i if is_prime?(number)
        factors << i if is_prime?(i)
      end
        i += 1
    end
    factors
  end

  def factorial(number)
    fac = 1
    (1..number).each do |x|
      fac *= x
    end
    fac
  end

  def triangle_number(num)
    (num * (num + 1)) / 2 
  end

  def palindrome?
     self.to_s == self.to_s.reverse ? true : false
  end

  def multiply_each_array_in(array_of_arrays)
    #=================================================
    #  multiplies the contents of each array in an array
    #  and returns a hash where each  value is an array
    #  with the key being the product of its contents
    
    compare_hash = {}

    array_of_arrays.each do |x| 
      y = x.reduce(1, :*)
      compare_hash[y] = x 
    end
    compare_hash
  end

  def get_ready(value, class_instance)
    ARGV << value if ARGV.empty?
    ARGV.each { |v| class_instance.go v.to_i }
    puts "-----------------------------------------------"
  end
end