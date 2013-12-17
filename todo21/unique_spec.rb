require "./unique"

describe "uniq" do
  it "should return an array of only unique values" do
    expect([1,1,1,1].uniq).to eq([1])
  end

  it "should return an array of only unique values" do
    expect([1,2,3,2,3,2].uniq).to eq([1,2,3])
  end

  it "should return an array of only unique values" do
    expect([1,2,3,4].uniq).to eq([1,2,3,4])
  end
end