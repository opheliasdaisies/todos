require "./dog_years"

describe "#age_in_years" do
	it "should return the age passed into the method" do
		expect(age_in_years(5)).to eq(5)
	end
end

describe "#age_in_days" do
	it "should return the age in years * 365" do
		expect(age_in_days 3).to eq(1095)
	end
	it "should return the age in years * 365" do
		expect(age_in_days 11).to eq(4015)
	end
end

describe "#age_in_dog_years" do
	it "should return the age in years * 7" do
		expect(age_in_dog_years 7).to eq(49)
	end
	it "should return the age in years * 7" do
		expect(age_in_dog_years 12).to eq(84)
	end
end