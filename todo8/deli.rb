class Deli
	attr_accessor :line

	def initialize(line)
		@line = line
	end

	def take_a_number(name)
		num = line.length + 1
		line << "#{num}. #{name}"
	end
end