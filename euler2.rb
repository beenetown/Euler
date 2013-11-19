require_relative 'euler_help'
include EulerHelp

class EulerTwo
  def even_fib_below(n)
    even_array = []
    fib_sequence_below(n, [1,1]).each { |v| even_array << v if v.even? }
    answer = even_array.reduce(:+)
    print_answer(answer, n)
  end

  def print_answer(answer, n)
    puts "-----------------------------------------------"
    puts "The sum of all even Fibonaci numbers below "
    puts "#{n} is: #{answer.add_commas}."
  end

  def go(value)
    even_fib_below(value)
  end
end

e2 = EulerTwo.new
get_ready("4000000", e2)
