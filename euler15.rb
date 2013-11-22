require_relative 'euler_help'
include EulerHelp

class EulerFifteen
  def lattice_paths(num)
    n = num*2
    k = num

    n_2 = factorial(n)
    k_2 = factorial(n-k) * factorial(k)

    answer = n_2/k_2
    print_answer(answer, num)
  end

  def go(value)
    lattice_paths(value)
  end

  def print_answer(answer, num)
    puts "-----------------------------------------------"
    puts "The number of paths for a #{num}x#{num} grid\nis #{answer.add_commas}"
  end
end

e15 = EulerFifteen.new
get_ready(20, e15)
