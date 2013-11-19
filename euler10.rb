require 'prime'
require_relative 'euler_help'
include EulerHelp

class EulerTen
  def prime_summation(n)
    i = 1
    primes = [2]
    loop do
      i += 2
      primes << i if Prime.prime?(i) 
      break if i >= n
    end

    primes.delete_if { |prime| prime >= n }
    answer = primes.reduce(:+)
    print_answer(n, answer)
  end

  def go(value)
    prime_summation(value)
  end

  def print_answer(n, answer)    
    puts "-----------------------------------------------"
    puts "The sum of all primes below #{n.add_commas} is #{answer.add_commas}"
  end
end


e10 = EulerTen.new
get_ready("2000000", e10)

