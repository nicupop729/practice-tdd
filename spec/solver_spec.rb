require_relative '../solver'

describe 'test a new instance of Solver' do
  before(:each) do
    @new_solver = Solver.new
  end

  context 'test the factorial method'
  it 'returns the rigth answer for 5' do
    expect(@new_solver.factorial(5)).to eq(120)
  end

  it 'returns the rigth answer for 10' do
    expect(@new_solver.factorial(10)).to eq(3_628_800)
  end

  it 'returns an error message for negative number' do
    expect(@new_solver.factorial(-2)).to eq(nil)
  end

  context 'test the reverse method'
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
    expect { @new_solver.reverse(54321) } .to raise_error(NoMethodError)
  end
end
