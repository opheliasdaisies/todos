require "./deli"

describe Deli, "#take_a_number" do
	it "should take a customer name, add a number before the name, and add them to the end of the line array" do
		expect(Deli.new(["1. Steve", "2. Blake"]).take_a_number("Ashley")).to eq(["1. Steve", "2. Blake", "3. Ashley"])
	end
	it "should take a customer name, add a number before the name, and add them to the end of the line array" do
		expect(Deli.new([]).take_a_number("Ashley")).to eq(["1. Ashley"])
	end
	it "should take a customer name, add a number before the name, and add them to the end of the line array" do
		expect(Deli.new(["3. Mark", "4. Jane"]).take_a_number("Ashley")).to eq(["3. Mark", "4. Jane", "5. Ashley"])
	end
end

describe Deli, "#now_serving" do
	it "should remove the customer who is first in line and return their name" do
		expect(Deli.new(["1. Steve", "2. Blake", "3. Ashley"]).now_serving).to eq("Steve")
	end
end