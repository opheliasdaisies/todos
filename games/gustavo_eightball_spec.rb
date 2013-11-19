require "./gustavo_eightball.rb"

describe "#card" do
	it "should return a number greater than 0" do
		expect(card > 0).to be_true
	end
	it "should return a number less than 12" do
		expect(card < 12).to be_true
	end
end

describe "#hit" do
	it "should return a new value for total cards greater than the total_cards passed in if 'hit' ." do
		expect(hit('hit', 4)).to be >4
	end
	it "should return nil if anything other than 'hit' is passed into the method" do
		expect(hit('stay', 4)).to eq(nil)
	end
end