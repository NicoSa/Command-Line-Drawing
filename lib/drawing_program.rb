require 'helpers/drawing_program_helper'

class DrawingProgram

	include DrawingProgramHelper

	def initialize
	   puts 'enter command:'
	end

	def create_canvas(size)
	 coordinates_array = size.split
	 
	 canvas_20_by_4
	end

end