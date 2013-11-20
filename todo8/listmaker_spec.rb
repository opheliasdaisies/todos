require "./listmaker.rb"

describe "#make_list" do
	it "should return an array, as an array holding a numbered list of strings." do
		expect(make_list(["this","that","other"])).to eq(["1. this", "2. that", "3. other"])
	end
end