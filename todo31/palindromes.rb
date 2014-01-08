# A palindrome is a string that is written the same forward as it is in reverse. Write a method to return the longest palindrome in a given string

def longest_palindrome(string)
  return string if string == string.reverse
  palindromes = []
  string.each_char do |letter|
    first = string.index(letter)
    last = string.length
    last.times do
      segment = string[first-1, last]
      next if segment.length == 1
      palindromes << segment if segment == segment.reverse
      last -= 1
    end
  end
  palindromes.uniq!
  longest = ""
  palindromes.each do |palindr|
    longest = palindr if palindr.length > longest.length
  end
  longest
end

# longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd") #=> "dhfdkjfffhhfffjkdfhd"