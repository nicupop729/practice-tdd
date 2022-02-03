class Solver
  def factorial(input)
    if input <= 0
      puts 'sorry I only compute the factorial for positive numbers'
      nil
    else
      @product = 1
      (1..input).each do |number|
        @product *= number
      end
      @product
    end
  end
end
