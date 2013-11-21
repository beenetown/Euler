require_relative 'euler_help'
include EulerHelp

class EulerTwelve
  def triangle_divisors_greater_than(number)
    num = 0
    factors = 0
    until (factors * 2) > number
      num += 1
      tri_num = triangle_number(num)
      factors = 0
      root = Math.sqrt(tri_num)
      (1..root).each do |i|
        factors += 1 if factor_of?(tri_num, i)
      end
    end
    print_answer(tri_num, factors)
  end

  def go(value)
    triangle_divisors_greater_than(value)
  end

  def print_answer(tri_num, factors)
    puts "-----------------------------------------------"
    puts "#{tri_num.add_commas} has #{factors * 2} factors."
  end
end

e12 = EulerTwelve.new
get_ready("500", e12)