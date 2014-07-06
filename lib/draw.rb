# require 'helpers/draw_helper'
# require 'helpers/line_helper'

class Draw

  # include DrawHelper
  # include LineHelper

  attr_reader :canvas, :canvas_array

  def initialize
    @line_array = []
    @canvas = ""
  end

  def create_canvas(coordinates)
    @canvas_array = convert_coordinates_to_array(coordinates)
    @canvas = convert_canvas_to_string
  end

  def draw_line(coordinates)
    precompile_line_data(coordinates)
    @canvas
  end

  def draw_box(coordinates)
    precompile_box_data(coordinates)
    @canvas
  end

  
end
