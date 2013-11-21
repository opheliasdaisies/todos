class Deli
	attr_accessor :line

	def initialize(line)
		@line = line
	end

	def take_a_number(name)
		if line[0].nil?
			line << "1. #{name}"
		else
			last_num_str = line.last.split(".")[0]
			ticket = last_num_str.to_i + 1
			line << "#{ticket}. #{name}"
		end
	end

	def now_serving
		name = line.shift.split(" ")
		name[1]
	end
end