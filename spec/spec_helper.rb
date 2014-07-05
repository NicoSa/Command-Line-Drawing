require 'drawing_program'
require 'helpers/drawing_program_helper'
require 'helpers/horizontal_line_helper'
require 'helpers/canvas_helper_spec'

include DrawingProgramHelper
include HorizontalLineHelper

def create_canvas(coordinates)
  @drawing_program.create_canvas(coordinates)
end

def draw_line(coordinates)
  @drawing_program.draw_line(coordinates)
end
