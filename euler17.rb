require_relative 'euler_help'
include EulerHelp

class EulerSeventeen
  def count_to(num)
    counter = []
    (1..num).each do |x|
      counter << num_in_words(x)
    end
    answer = counter.join.length
    print_answer(answer, num)
  end

  def print_answer(answer, num)
    puts "-----------------------------------------------"
    puts "The number of letters of all the numbers from 1\nto #{num.add_commas} written out in words #{answer.add_commas}."
  end 
  def go(value) 
    count_to(value)
  end
end

e17 = EulerSeventeen.new
get_ready(1000, e17)