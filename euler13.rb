require_relative 'euler_help'
include EulerHelp

class EulerThirteen
  
  attr_reader :matrix

  def initialize
    @matrix = []
    file = File.new('euler13.txt')
    file.each { |line| @matrix << line}
  end

  def large_sum_first_ten(array)
    sum = 0
   @matrix.length.times do |x|
      sum += @matrix[x].to_i
    end

    sum_array = sum.to_s.split('')

    first_ten = []
    10.times { |x| first_ten << sum_array[x] }

    answer = first_ten.join 
    print_answer(answer)
  end

  def go(value)
    large_sum_first_ten(value)
  end

  def print_answer(answer)
    puts "-----------------------------------------------"
    puts "The first ten numbers of the sum are: \n #{answer.split('').join(', ')}"
  end
end

e13 = EulerThirteen.new
e13.go(e13.matrix)
puts "-----------------------------------------------"
