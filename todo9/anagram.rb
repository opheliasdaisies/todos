class Anagram
	attr_accessor :word

	def initialize(word)
		@word = word
	end

	def match(words_to_check)
		match_array = []
		split_word = word.split(//).sort
		words_to_check.each do |item|
			if item.split(//).sort == split_word
				match_array << item
			end
		end
		match_array.map do |matched_word|
			matched_word.to_s
		end
	end

end