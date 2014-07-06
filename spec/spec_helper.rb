require 'draw'
require 'helpers/draw_helper'
require 'helpers/line_helper'
require 'helpers/box_helper'
require 'helpers/canvas_helper_spec'

include DrawHelper
include LineHelper
include BoxHelper

def create_canvas(coordinates)
  @drawing_program.create_canvas(coordinates)
end

def draw_line(coordinates)
  @drawing_program.draw_line(coordinates)
end
