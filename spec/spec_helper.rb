require 'draw'
require 'helpers/canvas_helper'
require 'helpers/line_helper'
require 'helpers/box_helper'
require 'helpers/coordinate_calculator_helper'
require 'helpers/canvas_helper_spec'

include CanvasHelper
include LineHelper
include BoxHelper
include CoordinateCalculator

def create_canvas(coordinates)
  @drawing_program.create_canvas(coordinates)
end

def draw_line(coordinates)
  @drawing_program.draw_line(coordinates)
end
