class Solver
  def factorial(input)
    if input.negative?
      nil
    elsif input.zero?
      @product = 1
    else
      @product = 1
      (1..input).each do |number|
        @product *= number
      end
      @product
    end
  end

  def reverse(input)
    input.reverse
  end

  def fizz_buzz(input)
    @fb = ''
    @fb += 'Fizz' if (input % 3).zero?
    @fb += 'Buzz' if (input % 5).zero?
    @fb = input.to_s if @fb == ''
    @fb
  end
end
