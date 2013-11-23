require_relative 'euler_help'
include EulerHelp

matrix = []
file = File.new('euler67.txt')
file.each { |line| matrix << line.split(' ') }
matrix = matrix.reverse

def print_answer(answer)
  puts "-------------------------------------------------------------"
  puts "The maximum total from top to bottom of the triangle is #{answer}."
  puts "-------------------------------------------------------------"
end

triangle_max(matrix)