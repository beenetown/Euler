#
def is_prime?(number)
  divisible_by = []
  
  (1..number).each do |x|
    divisible_by << x if number%x == 0 
    break if number % 2 == 0 || divisible_by.length > 2
  end
  divisible_by == [1,number] ? true : false
end

def factor_of?(number, divisor)
  number % divisor == 0 ? true : false
end

def print_prime(i,x)
  if x == 1 || x == 101 || x == 201
    puts "#{x}st prime factor: #{i}"
  elsif x == 2 || x == 102 || x == 202
    puts "#{x}nd prime factor: #{i}"
  elsif x == 3 || x == 103 || x == 203
    puts "#{x}rd prime factor: #{i}"
  else
    puts "#{x}th prime factor: #{i}"
  end
end

def largest_prime_factor_of(number)
  w = [1]
  x = 1
  (1..number).each do |i|                                                                                                                                                                                                                      
    if factor_of?(number,i) && is_prime?(i)
      w << i
      print_prime(i,x)
      x += 1 
    end
  end
  puts "The largest prime factor of #{number} is #{w.last}"
end

largest_prime_factor_of ARGV.pop.to_i
# largest_prime_factor_of 600851475143
