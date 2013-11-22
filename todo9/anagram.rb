class Anagram
	attr_accessor :word

	def initialize(word)
		@word = word
	end

	def match(words_to_check)
		match_array = []
		words_to_check.each do |item|
			if word == item
				match_array << item
			end
		end
		match_array
	end

end