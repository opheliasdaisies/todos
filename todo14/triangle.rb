class Triangle
	attr_reader :side1, :side2, :side3

	TriangleError = "That triangle is illegal"

	def initialize(side1, side2, side3)
		@side1 = side1
		@side2 = side2
		@side3 = side3
	end

	def kind
		if side1 == side2 && side2 == side3
			:equilateral
		elsif side1 == side2 || side2 == side3 || side3 == side1
			:isosceles
		else
			:scalene
		end
	end

	def validity_check
		if side1 <= 0 || side2 <= 0 || side3 <= 0
			raise_error(TriangleError)
		elsif side1 + side2 <= side3 || side2 + side3 <= side1 || side3 + side1 <= side2
			raise_error(TriangleError)
		end
	end

end