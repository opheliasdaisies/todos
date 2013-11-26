require_relative "./key_for_min_value"

describe "#key_for_min_value" do
	it "should return the key for the smallest value in the hash" do
		expect(key_for_min_value({:pizza => 8, :olives =>50, :watermellon => 1})).to eq(:watermellon)
	end
	it "should return the key for the smallest value in the hash" do
		expect(key_for_min_value({:cat => 1, :hamster => 2})).to eq(:cat)
	end
	it "should return nil if an empty hash is passed in" do
		expect(key_for_min_value({})).to eq(nil)
	end
end