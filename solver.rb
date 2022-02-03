class Solver
  def factorial(n)
    if n <= 0
      puts "sorry I only compute the factorial for positive numbers"
      return
    else
      @product = 1
      (1..n).each do |number|
        @product *= number
      end
    return @product
    end
  end
end
