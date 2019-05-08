require_relative "../lib/fizzbuzz"
describe "fizzbuzz" do
  it 'returns "fizz" when passed a multiple of 3' do
    #Arrange

    while true
      number = rand(100) * 3
      if number % 5 != 0
        break
      end
    end

    expect(fizzbuzz(number)).to eq("fizz")
  end

  it 'returns "buzz" when passed a multiple of 5' do
    while true
      number = rand(100) * 5
      if number % 3 != 0
        break
      end
    end
    expect(fizzbuzz(number)).to eq("buzz")
  end

  it 'returns "fizzbuzz"  when passed a multiple of both 3 and 5' do
    number = rand(100) * 5 * 3
    expect(fizzbuzz(number)).to eq("fizzbuzz")
  end

  it "returns the number if it does not match any of the previous conditions" do
    while true
      number = rand(1000000)
      if number % 3 != 0 && number % 5 != 0
        break
      end
    end
    expect(fizzbuzz(number)).to eq(number)
  end
end
