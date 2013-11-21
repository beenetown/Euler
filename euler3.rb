require 'prime'
require_relative 'euler_help'
include EulerHelp

class EulerThree
  def largest_prime_factor_of(number)
    answer = prime_factors_of(number).sort.last
    print_answer(answer, number)
  end

  def print_answer(answer, number)
    puts "The largest prime factor of #{number.add_commas} is #{answer.add_commas}"
  end

  def go(value)
    largest_prime_factor_of(value)
  end

end

e3 = EulerThree.new
get_ready("600851475143", e3)
