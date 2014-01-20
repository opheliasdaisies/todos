# Separate numbers with a comma each three digits.

def separate_with_comma(n)
  str = n.to_s
  len = str.length/3
  ind = -4
  len.times do
    str.insert(ind, ",")
    ind -= 3
  end
  str
end

# separate_with_comma(1) #=> "1" 
# separate_with_comma(1000) #=> "1,000" 
# separate_with_comma(10000) #=> "10,000"