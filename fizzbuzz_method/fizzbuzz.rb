def fizzbuzz(num)
	if num % 15 == 0
		"fizzbuzz"
	elsif num % 3 == 0
		"fizz"
	elsif num % 5 == 0
		"buzz"
	elsif num.is_a?(Numeric) 
		num
	else
		"Sorry, \'#{num}\' is not a number."
	end
end

puts fizzbuzz(3293)