require "./yahtzee"

describe "#roll_dice" do
	it "returns an array of five random numbers" do
		expect(roll_dice.length).to eq(5)
	end
end

describe "#win?" do
	it "returns true if all values in the array are equal" do
		expect(win?([4,4,4,4,4])).to be_true
	end
	it "returns false if the values in the array are not all equal" do
		expect(win?([3,4,1,2,4])).to be_false
	end
	it "returns false if the values in the array are not all equal" do
		expect(win?([1,1,2,1,1])).to be_false
	end	
end