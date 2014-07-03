require 'spec_helper'

describe 'Drawing Line Helper' do

	before(:each) do
		@drawing_program = DrawingProgram.new
	end

	it 'sets horizontal line variables' do
		@drawing_program.set_horizontal_line_array_variables("L 1 2 1 6")
		puts @x1
		expect(@x1).to eq "1"
		expect(@y1).to eq "2"
		expect(@x2).to eq "1"
		expect(@y2).to eq "6"
	end

end