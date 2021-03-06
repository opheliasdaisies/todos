require "./listmaker.rb"

describe "#make_list" do
	it "should return an array, as an array holding a numbered list of strings." do
		expect(make_list(["this","that","other"])).to eq(["1. this", "2. that", "3. other"])
	end
	it "should return an empty array if an empty array is passed in." do
		expect(make_list([])).to eq([])
	end
	it "should return an array, as an array holding a numbered list of strings." do
		expect(make_list([0,1,2])).to eq(["1. 0", "2. 1", "3. 2"])
	end
	it "should return nested ordered arrays of strings if a nested array is passed in" do
		expect(make_list([[4, "pizza"],"oak",["loop"]])).to eq(["1. [\"1. 4\", \"2. pizza\"]", "2. oak", "3. [\"1. loop\"]"])
	end
end