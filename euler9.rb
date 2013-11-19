require_relative 'euler_help'
include EulerHelp

class EulerNine
  def pythag_triplet_eq_to(n)
    array_of_arrays = []
    array_1 = []
    array_2 = []

    (1..999).each do |x| 
      array_1 << x**2
      array_2 << x**2
    end

    array_of_arrays = array_1.product(array_2)

    new_array = []
    foo = []
    answer = []

    array_of_arrays.each do |x|
      y = x.reduce(:+)
      x << y
      x.map! { |y| Math.sqrt(y) }  
      answer << x if x.reduce(:+) == n
      break if answer.length > 0
    end
    print_answer(answer, n)
  end
  
  def print_answer(answer, n)  
    if answer.length > 0
      puts "-----------------------------------------------"
      puts "The answer is #{answer.flatten.reduce(:*).to_i.add_commas} and the triplet is:\na = #{answer.flatten[0].to_i}, b = #{answer.flatten[1].to_i}, & c = #{answer.flatten[2].to_i}."
    else
      puts "-----------------------------------------------"
      puts "Sorry, there is no triplet that exactly equals #{n}."
    end
  end

  def go(value)
    pythag_triplet_eq_to(value)
  end
end

e9 = EulerNine.new
get_ready("1000", e9)