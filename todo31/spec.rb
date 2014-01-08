require "./palindromes"

describe "#longest_palindrome" do
  it "should return the longest palindrome in a given string" do
    expect(longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd")).to eq("dhfdkjfffhhfffjkdfhd")
  end
  it "should return the full string if it is a palindrome" do
    expect(longest_palindrome("abedkseesjseeskdeba")).to eq("abedkseesjseeskdeba")
  end
  it "should return an array of strings if there are multiple palindromes of the longest length" do
    expect(longest_palindrome("beebplalp")).to eq(["bleeb", "plalp"])
  end
end