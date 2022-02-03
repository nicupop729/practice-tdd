require_relative '../solver'

describe 'test a new instance of Solver' do
  before(:each) do
    @new_solver = Solver.new
  end

  contex 'test the factorial '
  it 'returns the rigth answer for 5' do
    expect(@new_solver.factorial(5)).to eq(120)
  end

  it 'returns the rigth answer for 10' do
    expect(@new_solver.factorial(10)).to eq(3_628_800)
  end

  it 'returns an error message for negative number' do
    expect(@new_solver.factorial(-2)).to eq(nil)
  end
end
