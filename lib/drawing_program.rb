#require 'helpers/drawing_program_helper'

class DrawingProgram

  #include DrawingProgramHelper

  def initialize
    puts 'enter command:'
  end

  def create_canvas(coordinates)
	@canvas_array = convert_coordinates_to_array(coordinates)
    @canvas = convert_canvas_to_string
  end

  def draw_horizontal_line(coordinates)
	@horizontal_line_array = convert_coordinates_to_array(coordinates)	
	x1, y1, x2, y2 = @horizontal_line_array[0], @horizontal_line_array[1], @horizontal_line_array[2], @horizontal_line_array[3]
	puts x1.to_i
	puts y1
	puts x2
	puts y2
	horizontal_starting_point = ((x1.to_i * width.to_i ) + 2) + y1.to_i
	horizontal_end_point = horizontal_starting_point + y2.to_i
	
	line_array = [*(horizontal_starting_point..horizontal_end_point)]

	@canvas.chars.map.with_index do |elem,index|
		if line_array.include?(index)
			elem = "X"
		else
			elem
		end
	end.join	
  end
end
