require_relative 'euler_help'
include EulerHelp

num = 0
loop do
  num += 1
  x = triangle_number(num)
  factors = []
  root = Math.sqrt(x)
  (1..root).each do |i|
    factors << i if factor_of?(x, i)
  end
  puts "#{x.add_commas} has #{factors.length * 2} factors"
  break if (factors.length * 2) > 500
end
    
