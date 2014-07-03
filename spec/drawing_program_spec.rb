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
end