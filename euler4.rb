require_relative 'euler_help'
include EulerHelp

class EulerFour
  def all_possible_array
    # returns an array of arrays containing all combinations of 3 digit numbers
    array_of_arrays = []
    array_1 = []
    array_2 = []

    (100..999).each do |x| 
      array_1 << x
      array_2 << x
    end
    array_of_arrays = array_1.product(array_2)
    array_of_arrays
  end

  def largest_palindrome
    sort_array = []
    compare_hash = multiply_each_array_in(all_possible_array) 

    compare_hash.each_key { |k| sort_array << k if k.palindrome? }
    biggest = sort_array.sort.last
    print_answer(biggest, compare_hash)
  end

  def print_answer(biggest, compare_hash)
    puts "----------------------------------------------------------"
    puts "#{biggest.add_commas} is the answer, and is the multiple of #{compare_hash[biggest].join(' and ')}."
    puts "----------------------------------------------------------"
  end

  def go
    largest_palindrome
  end
end

e4 = EulerFour.new
e4.go
