require "./find_keys"

describe "Hash" "#keys_of" do
  it "should het keys of a hash whose values equal to given arguments." do
    expect({a: 1, b: 2, c: 3}.keys_of(1)).to eq([:a])
  end
  it "should het keys of a hash whose values equal to given arguments." do
    expect({a: 1, b: 2, c: 3, d: 1}.keys_of(1)).to eq([:a, :d])
  end
  it "should het keys of a hash whose values equal to given arguments." do
    expect({a: 1, b: 2, c: 3, d: 1}.keys_of(1, 2)).to eq([:a, :b, :d])
  end
end
