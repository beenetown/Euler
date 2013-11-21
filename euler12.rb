require_relative 'euler_help'
include EulerHelp

num = 12372
loop do
  num += 1
  x = triangle_number(num)
  factors = []
  (1..x).each do |i|
    factors << i if factor_of?(x, i)
  end
  puts "#{x.add_commas} has #{factors.length} factors"
  break if factors.length > 500
end
    
