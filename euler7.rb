require 'prime'
require_relative 'euler_help'
include EulerHelp

class EulerSeven
  def nth_prime(n)
    i = 0
    primes = []
    loop do
      i += 1
      if is_prime?(i) 
        primes << i
      end
      break if primes.length == n
    end
    print_answer(primes, i)
  end

  def go(value)
    nth_prime(value)
  end

  def print_answer(n, answer)
    puts "-----------------------------------------------"
    puts "Prime number ##{n.length.add_commas} is #{answer.add_commas}."
  end
end

e7 = EulerSeven.new
get_ready("10001", e7)

