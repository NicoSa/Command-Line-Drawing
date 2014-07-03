module DrawingProgramHelper

	def determine_size_of_canvas(size)
		@split_coordinates = size.split.drop(1)
	end

	def height
		@split_coordinates[1]
	end

	def width
		@split_coordinates[0]
	end

	def convert_canvas_to_string
		(("-" * width.to_i) + "\n" +
    	("|" + (" " * (width.to_i - 2)) + "|\n") * height.to_i +
    	("-" * width.to_i)).to_s
    end
end