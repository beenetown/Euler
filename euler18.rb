require_relative 'euler_help'
include EulerHelp

triangle = []
file = File.new('euler18.txt')
file.each { |line| triangle << line.split(' ')}
triangle = triangle.reverse


def print_answer(answer)
  puts "-------------------------------------------------------------"
  puts "The maximum total from top to bottom of the triangle is #{answer}."
  puts "-------------------------------------------------------------"
end

print_answer triangle_max(triangle)