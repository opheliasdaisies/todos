require "./fizzbuzz"

describe "#fizzbuzz" do
	it "should return ‘fizzbuzz’ when number is evenly divisible by 15" do
		expect(fizzbuzz(75)).to eq("fizzbuzz")
	end
	it "should return ‘buzz’ when number is evenly divisible by 5" do
		expect(fizzbuzz(10)).to eq("buzz")
	end
	it "should return 'fizz' when number is evenly divisible by 3" do
		expect(fizzbuzz(9)).to eq("fizz")
	end
	it "should return a number if not evenly divisible by 5 or 3" do
		expect(fizzbuzz(1)).to eq(1)
	end
	it "should return an error if a number is not passed in" do
		expect(fizzbuzz("pizza")).to eq("Sorry, 'pizza' is not a number.")
	end
end