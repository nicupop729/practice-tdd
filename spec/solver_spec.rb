require_relative '../solver.rb'

describe 'Test the factorial function' do

  before(:each) do
    @new_factorial = Solver.new
  end

  context 'test factorial method'
  it 'returns the rigth answer for 5' do
    expect(@new_factorial.factorial(5)).to eq(120)
  end

  it 'returns the rigth answer for 10' do
    expect(@new_factorial.factorial(10)).to eq(3628800)
  end

  it 'returns an error message for negative number' do
    expect(@new_factorial.factorial(-2)).to eq(nil)
  end
end
