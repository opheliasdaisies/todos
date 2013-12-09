# Instructions:
# Count elements in an Array by returning a hash with keys of the elements and values of the amount of times they occur.

# test = ['cat', 'dog', 'fish', 'fish']

# def count(array)
#   ___
# end

# count(test) #=> { 'cat' => 1, 'dog' => 1, 'fish' => 2 })

require "./count_items.rb"

describe "#count" do
	it "should count the elements in an array and return a hash with the keys of elements and values of the number of times they occur." do
		test = ['cat', 'dog', 'fish', 'fish']
		expect(count(test)).to eq({ 'cat' => 1, 'dog' => 1, 'fish' => 2 })
	end	

	it "should count the elements in an array and return a hash with the keys of elements and values of the number of times they occur." do
		test = ['fish', 'fish', 'fish', 'fish']
		expect(count(test)).to eq({ 'fish' => 4 })
	end	
end