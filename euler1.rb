require_relative 'euler_help'
include EulerHelp

class EulerOne
  def one_to(n)
    # This takes all numbers from 1 to 999 and adds 
    # them together if they are divisible by 3 or five

    y = 0
    (1..n-1).each do |x|
    y += x  if x%3 == 0 || x%5 == 0
    end
    print_answer(y, n)
  end

  def print_answer(y, n)
    puts "-----------------------------------------------"
    puts "The sum of all the numbers divisible by 3 or 5 \nfrom 1 to #{n} is #{y.add_commas}."
  end

  def go(value)
    one_to(value)
  end
end

e1 = EulerOne.new
get_ready("1000", e1)