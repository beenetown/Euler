require_relative 'raw'
require_relative 'euler_help'
include EulerHelp

class EulerEight
  def whatever(array)
    sort_array = []
    prod_hash = {}
    array_of_arrays = []


    # pushes each group of five into an array and multiplies each group together and pushes 
    # the array into a hash with the value of the multiplication as the key
    (0..(array.length - 5)).each do |n|
      x = []
      array[n..n+4].each { |m| x << m.to_i }
      array_of_arrays << x
      prod_hash = multiply_each_array_in(array_of_arrays)
    end

    prod_hash.each_key { |k| sort_array << k }
    
    answer = sort_array.sort.last
    print_answer(prod_hash[answer], answer)
  end

  def print_answer(array, answer) 
      puts "-----------------------------------------------"
      puts "The answer is #{answer.add_commas} and comes from this array \nof numbers: [#{array.join(', ')}]."
  end

  def go(value)
    array = value.to_s.split('')
    whatever(array)
  end
end

raw = RawNumber::RAW  
e8 = EulerEight.new

get_ready(raw, e8)