require 'simplecov'
SimpleCov.start
require_relative '../solver'

describe 'test a new instance of Solver' do
  before(:each) do
    @new_solver = Solver.new
  end

  context 'test the factorial method' do
    it 'returns the rigth answer for 5' do
      expect(@new_solver.factorial(5)).to eq(120)
    end

    it 'returns the rigth answer for 10' do
      expect(@new_solver.factorial(10)).to eq(3_628_800)
    end

    it 'returns an error message for negative number' do
      expect(@new_solver.factorial(-2)).to eq(nil)
    end

    it 'returns 1 if the input is 0' do
      expect(@new_solver.factorial(0)).to eq(1)
    end
  end

  context 'test the reverse method' do
    it 'returns the right result for "hello"' do
      expect(@new_solver.reverse('hello')).to eq('olleh')
    end

    it 'returns the right result for "abracadabra"' do
      expect(@new_solver.reverse('abracadabra')).to eq('arbadacarba')
    end

    it 'returns the right result for "12345"' do
      expect(@new_solver.reverse('12345')).to eq('54321')
    end

    it 'returns the right result for 54321' do
      expect { @new_solver.reverse(54_321) }.to raise_error(NoMethodError)
    end
  end

  context 'test the fizz_buzz method' do
    it 'returns FizzBuzz if number is divisible by 3 & 5' do
      expect(@new_solver.fizz_buzz(15)).to eq('FizzBuzz')
    end

    it 'returns Fizz if number is divisible by 3' do
      expect(@new_solver.fizz_buzz(99)).to eq('Fizz')
    end

    it 'returns Buzz if number is divisible by 5' do
      expect(@new_solver.fizz_buzz(125)).to eq('Buzz')
    end

    it 'returns the number as a string if is not divisible neither by 3 nor 5' do
      expect(@new_solver.fizz_buzz(161)).to eq('161')
    end
  end
end
