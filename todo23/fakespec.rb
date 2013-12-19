require "./fakearray"

describe FakeArray do
  it "should treat the fake array the same as an array" do
    container = []
    array = [1,2,3]
    fake = FakeArray.new(1,2,3)
    expect(fake.each {|elem| container << elem +1}).to eq(array.each {|elem| container << elem + 1} )
  end

  it "should return the first item" do
    fake = FakeArray.new(1,2,3)
    expect(fake.first).to eq(1)
  end

  it "should return the element with a particular index" do
    fake = FakeArray.new(1,2,3)
    expect(fake[1]).to eq(2)
  end
end