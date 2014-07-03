#require 'helpers/drawing_program_helper'

class DrawingProgram

  #include DrawingProgramHelper

  def initialize
    puts 'enter command:'
  end

  def create_canvas(size)
    extract_coordinates(size)
    (("-" * width.to_i) + "\n" +
    ("|" + (" " * (width.to_i - 2)) + "|\n") * height.to_i +
    ("-" * width.to_i)).to_s
  end

end
