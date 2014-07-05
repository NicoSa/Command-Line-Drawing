require 'spec_helper'

describe 'Drawing Program' do

	before(:each) do
		@drawing_program = DrawingProgram.new
	end

	it 'prefixes all prompts with "enter command:\n"' do
		expect { DrawingProgram.new }.to output("enter command:\n").to_stdout
	end

	it 'creates a canvas of size 20 by 4' do
		expect(@drawing_program.create_canvas("C 20 4")).to eq canvas_20_by_4
	end

	it 'creates a canvas of size 10 by 5' do
		expect(@drawing_program.create_canvas("C 10 5")).to eq canvas_10_by_5
	end

	it 'creates a horizontal line from 1,2 to 6,2' do
		@drawing_program.create_canvas("C 20 4")
		expect(@drawing_program.draw_horizontal_line("L 1 2 6 2")).to eq canvas_with_line_1
	end

	it 'creates a horizontal line from 2,2 to 6,2' do
		@drawing_program.create_canvas("C 20 4")
		expect(@drawing_program.draw_horizontal_line("L 2 2 6 2")).to eq canvas_with_line_2
	end	

	it 'creates a horizontal line from 3,3 to 9,3' do
		@drawing_program.create_canvas("C 18 5")
		expect(@drawing_program.draw_horizontal_line("L 3 3 9 3")).to eq canvas_with_line_3
	end

	it 'creates a horizontal line from 5,5 to 7,5' do
		@drawing_program.create_canvas("C 10 8")
		expect(@drawing_program.draw_horizontal_line("L 5 5 7 5")).to eq canvas_with_line_4
	end
end