module EulerHelp

  def add_commas
    self.to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
  end

  def fib_sequence_below(number, start_array)
    # This will return an array of fibonacci
    # numbers below number and starting with
    # the value of start_array set to an array
    fib_sequence = start_array
    while fib_sequence[-2] + fib_sequence[-1] < number  
      fib_sequence << fib_sequence[-2] + fib_sequence[-1]
    end
    fib_sequence
  end

  def is_prime?(number)
    # This produces primes in a very slow, but accurate fashion.
    # Use Prime.prime?(number) in its place.
    divisible_by = []
    (1..number).each do |x|
      divisible_by << x if number % x == 0 
      break if divisible_by.length > 2
    end
    divisible_by == [1,number] ? true : false
  end

   def factor_of?(number, i)
    number % i == 0 ? true : false
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

  # def largest_prime_factor_of(number)
  #   w = [1]
  #   x = 1
  #   (1..number).each do |i|
  #     if factor_of?(number,i) && Prime.prime?(i)
  #       w << i
  #       x += 1 
  #     end
  #   end
  # end
    
end