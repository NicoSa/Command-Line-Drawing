#require 'helpers/drawing_program_helper'

class DrawingProgram

  #include DrawingProgramHelper

  def initialize
    puts 'enter command:'
  end

  def create_canvas(coordinates)
    determine_size_of_canvas(coordinates)
    @canvas = convert_canvas_to_string
  end

  def draw_line(line)
  	@canvas.chars
  end
end
