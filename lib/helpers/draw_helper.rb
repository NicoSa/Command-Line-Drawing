module DrawHelper

	def convert_coordinates_to_array(coordinates)
		coordinates.split.drop(1)
	end

	def height
		@canvas_array[1]
	end

	def width
		@canvas_array[0]
	end

	def convert_canvas_to_string
		((("-" ) * width.to_i) + "--\n" +
    	("|" + (" " * (width.to_i)) + "|\n") * height.to_i +
    	(("-" )* width.to_i) + "--").to_s
    end
end