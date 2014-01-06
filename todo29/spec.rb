require "./each\ with\ object"

describe "#even_sum" do
  it "returns an array of the even-length words spelled backwards" do
    expect(even_sum(["cat", "dog", "bird", "fish"])).to eq(["drib", "hsif"])
  end
  it "returns an array of the even-length words spelled backwards" do
    expect(even_sum(["catch", "dogs", "bit", "fish"])).to eq(["sgod", "hsif"])
  end
end