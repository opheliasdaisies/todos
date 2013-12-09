def count(array)
	totals = {}
	array.each do |word|
		if totals.include?(word)
			totals[word] += 1
		else
			totals[word] = 1
		end
	end
	totals
end