require_relative 'euler_help'
include EulerHelp

class EulerSixteen
  
  def power_sum(num)
    answer = (2**num).to_s.split('').map { |x| x.to_i }.reduce(:+)
    print_answer(answer, num)
  end

  def go(value)
    power_sum(value)
  end

  def print_answer(answer, num)
    puts "-----------------------------------------------"
    puts "The sum of the digits of the number 2 to the\n#{num.add_commas} is #{answer.add_commas}"
  end
end

e16 = EulerSixteen.new
get_ready(1000, e16)