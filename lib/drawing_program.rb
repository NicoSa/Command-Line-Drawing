#require 'helpers/drawing_program_helper'
#require 'helpers/horizontal_line_helper'

class DrawingProgram

  #include DrawingProgramHelper
  #include HorizontalLineHelper

  def initialize
    puts 'enter command:'
  end

  def create_canvas(coordinates)
    @canvas_array = convert_coordinates_to_array(coordinates)
    @canvas = convert_canvas_to_string
  end

  def draw_horizontal_line(coordinates)
  	precompile_horizontal_line_data(coordinates)
    display_canvas_with_horizontal_line
  end

end
