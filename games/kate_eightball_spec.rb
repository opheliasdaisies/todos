require "./kate_eightball.rb"

describe "#total" do
	it "should return a single value which is the sum of the values in the array" do
		expect(total([3,1,7])).to eq(11)
	end
end

describe "#hit?" do
	it "should add 0 to the end of an array if the user stays" do
		expect(hit?([2,3,4], 2)).to eq([2,3,4,0])
	end
	it "should print 'Cool.' if the user stays" do
		
	end
	it "should print the old total for the hand if the user stays" do
		##
	end
	it "should add a random number to the end of an array if the user hits" do
		##
	end
	it "should tell the user their new card if the user hits" do
		##
	end
	it "should print the new total for the hand if hte user hits" do
		##
	end
	it "should respond, 'you broke the game' if a value other than h or s is entered by the user" do
		##
	end
end