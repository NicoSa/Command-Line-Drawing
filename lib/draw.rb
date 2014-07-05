#require 'helpers/drawhelper'
#require 'helpers/line_helper'

class DrawingProgram

  #include DrawHelper
  #include LineHelper
  attr_reader :canvas, :canvas_array

  # def initialize
  #   puts 'enter command:'
  # end

  def create_canvas(coordinates)
    @canvas_array = convert_coordinates_to_array(coordinates)
    @canvas = convert_canvas_to_string
  end

  def draw_line(coordinates)
  	precompile_line_data(coordinates)
    display_canvas_with_line
  end

end
