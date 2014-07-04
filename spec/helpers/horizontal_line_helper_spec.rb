require 'spec_helper'

describe 'Drawing Line Helper' do

	before(:each) do
		@drawing_program = DrawingProgram.new
	end

	it 'has set horizontal line variables' do
		set_horizontal_line_array_variables("L 1 2 1 6")
		expect(@x1).to eq "1"
		expect(@y1).to eq "2"
		expect(@x2).to eq "1"
		expect(@y2).to eq "6"
	end

	it 'calculates horizontal line array' do
		set_horizontal_line_array_variables("L 1 2 1 6")
		width = "20"
		height = "5"
		calculate_horizontal_line_array
		puts "---------------"
		puts @x1
		puts @y2
		puts @line_array
		puts width
		puts height
		puts "---------------"
		expect(calculate_horizontal_line_array).to eq 
	end
end