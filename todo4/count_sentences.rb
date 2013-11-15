# Write a method on String called `count_sentences` that returns the number of
# sentences in the string it is called on
string = "test. one is this. two! three?"
class String
  def count_sentences
    self.split
  end
end

puts string.count_sentences

string = ""

puts string.count_sentences