require "./gustavo_eightball.rb"

describe "#card" do
	it "should return a number greater than 0" do
		expect(card > 0).to be_true
	end
	it "should return a number less than 12" do
		expect(card < 12).to be_true
	end
end

describe "#blackjack" do

end