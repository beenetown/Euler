require_relative 'euler_help'
include EulerHelp

class EulerEleven
  matrix = []
  @prod_hash = {}
  eval_array = []

  file = File.new('euler11.txt')
  file.each { |line| matrix << line.split(' ')}
  
  def check(matrix)
    matrix.each do |row|
      (0..row.length - 4).each do |n|
        x = []
        row[n..n+3].each { |m| x << m.to_i }
        y = x.reduce(1, :*)
        @prod_hash[y] = x
      end
    end
  end

  # This sets up a vertical matrix
  vertical_matrix = []
  (0..19).each do |n|
    x = []
    matrix.each do |row|
      x << row[n]
    end
      # vertical_matrix << x
      matrix << x
  end

  #this sets up an array of diagonal rows
  # diagonal_matrix = []

  # top-left to bottom-right bottom diagonal-half of matrix
  diagonal_row = []
  (0..16).each do |row|  
      diagonal_row = []
    (0..(19-row)).each do |num2|
        x = matrix[row + num2][num2]
        diagonal_row << x
    end
    # diagonal_matrix << diagonal_row
    matrix << diagonal_row
  end

  #-------------------------------------------------------
  # top-left to bottom-right top diagonal- half of matrix
  diagonal_row = []
  (1..16).each do |column|  
      diagonal_row = []
    (0..(19-column)).each do |num2|
        x = matrix[num2][column + num2]
        diagonal_row << x
    end
    # diagonal_matrix << diagonal_row
    matrix << diagonal_row
  end

  # --------------------------------------------------------
  # top-right to bottom-left bottom diagonal-half of matrix
  diagonal_row = []
  (0..16).each do |row|  
      diagonal_row = []
      i = 0
    (0..(19-row)).each do |num2|
        i -= 1
        x = matrix[row+num2][i]
        diagonal_row << x
    end
    # diagonal_matrix << diagonal_row
    matrix << diagonal_row
  end

  #-------------------------------------------------------
  # top-right to bottom-left top diagonal- half of matrix
  diagonal_row = []
  (0..15).each do |row|  
      row_start = -16
      diagonal_row = []
    (0..3 + row).each do |column|
        row_start -= 1
        x = matrix[column][row_start + row]
        diagonal_row << x
    end
    # diagonal_matrix << diagonal_row
    matrix << diagonal_row
  end


  #=========================================================
  # this pushes values values to an eval_array to be sorted 
  # then the largest is returned an is the answer
  # the values associated can be returned using that largest
  # value as a key to the prod hash

  check matrix
  @prod_hash.each_key { |k| eval_array << k }
  puts "---------------------------------------------------"
  puts "The largest product of any 4 consecutive numbers in \nthe matrix is #{eval_array.sort.last.add_commas}."
  puts "---------------------------------------------------"
end