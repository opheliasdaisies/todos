# Let's make an object that behaves like a hash today!

# I'd like to be able to find keys in the hash regardless of whether they are strings or symbols.

# For example

# obj = {:blake => "the best"}
# obj["blake"] #=> "the best"

# I'd like to be able to set values in our fake hash.
# I'd like to be able to find all values that have keys beginning with the letter a.
# I'd like to be able to get all the keys in the hash in a descending alphabetized array.

class FakeHashWrapper
  attr_accessor :data

  def initialize(hash)
    @data = hash
  end

  def [](key)
    data[key.to_s]
    data[key.to_sym]
  end

  def []=](key, value)
    data[key] = value
  end

  def find_key_starting_letter(letter)
    values = []
    data.each do |key, value|
      values << value if key.to_s[0] == letter
    end
    values
  end

  def all_keys
    keys = []
    data.each { |key, value| keys << key }
    keys.sort.reverse
  end

end