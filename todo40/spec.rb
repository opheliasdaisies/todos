require "./separate_numbers_with_commas"

describe "#separate_with_comma" do
  it "should separate numbers with a comma each three digits." do
    expect(separate_with_comma(1)).to eq(1)
  end
  it "should separate numbers with a comma each three digits." do
    expect(separate_with_comma(1000)).to eq(1,000)
  end
  it "should separate numbers with a comma each three digits." do
    expect(separate_with_comma(10000)).to eq(10,000)
  end
end