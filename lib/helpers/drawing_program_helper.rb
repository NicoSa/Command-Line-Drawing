module DrawingProgramHelper

	def extract_coordinates(size)
		@split_coordinates = size.split.drop(1)
	end

	def height
		@split_coordinates[0]
	end

	def width
		@split_coordinates[1]
	end
end