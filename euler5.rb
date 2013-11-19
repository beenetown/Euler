require_relative 'euler_help'
include EulerHelp

class EulerFive
  def factor_of_each(numbers, mult)
    check = []
    all_true = []
    (1..numbers.length).each { |x| all_true << true }

    numbers.each do |num|
      factor_of?(mult, num) ? check << true : check << false
    end
    all_true == check ? true : false
  end

  def smallest_multiple_of_1_to(n)
    n == 1 ? mult = 1 : mult = n * (n - 1)
    numbers = []
    all_true = []
    check = []

    (1..n).each do |x| 
      numbers << x 
      all_true << true
    end

      i = mult
    loop do
      mult += i 
      break if factor_of_each(numbers, mult)
    end 
    print_answer(n, mult)
  end

  def print_answer(n, answer)
    puts "-----------------------------------------------"
    puts "The smallest number that can be divided by each \nof the numbers from 1 to #{n} is #{answer.add_commas}"
  end
  
  def go(n)
    smallest_multiple_of_1_to(n)
  end
end

e5 = EulerFive.new
get_ready("20", e5)

