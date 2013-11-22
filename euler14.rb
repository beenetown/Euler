require_relative 'euler_help'
include EulerHelp

class EulerFourteen
  def collatz(num)
    sequence = []
    until num <= 1 do 
      if num.even?
        num = num/2
      else
        num = (3 * num) + 1
      end
      sequence << num
    end
    sequence
  end

  def longest_collatz_under(n)
    collection = {}
    (2...n).each do |number|
      collection[number] = collatz(number).length
    end
    answer = sort(collection)
    print_answer(answer, n)
  end

  def sort(collection)
    sort_array = []
    collection.each_value { |v| sort_array << v }
    biggest =  sort_array.sort.last
    collection.select { |k, v|  v == biggest }.each_key { |k| return k }
  end

  def go(value)
    longest_collatz_under(value)
  end

  def print_answer(answer, n)
    puts "-----------------------------------------------"
    puts "The number with the longest Collatz chain\nstarting below #{n.add_commas} starts with the\nnumber #{answer.add_commas}."
  end
end

e14 = EulerFourteen.new
get_ready(1000000, e14)