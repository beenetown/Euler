require_relative "euler_help"
include EulerHelp

class EulerSix
  def square_diff(num)
    squares = []
    sum_of_1_to_num = 0

    (1..num).each do |x|
      squares << x**2
      sum_of_1_to_num += x
    end

    square_of_sum = sum_of_1_to_num**2
    sum_of_squares = squares.inject { |sum, x| sum += x }
    
    diff = square_of_sum - sum_of_squares
    
    print_answer(num, diff)
  end
  
  def go(value)
    square_diff(value)
  end

  def print_answer(n, answer)
    puts "-----------------------------------------------"
    puts "The difference between the sum of the squares \nof the first #{n} natural numbers is #{answer.add_commas}"
  end  
end

e6 = EulerSix.new
get_ready("100", e6)