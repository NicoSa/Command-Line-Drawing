require 'spec_helper'

describe 'Drawing Program Helper' do

	before(:each) do
		@drawing_program = DrawingProgram.new
	end

	it 'returns array of coordinates' do
		expect(determine_size_of_canvas("C 20 4")).to eq ["20","4"]
	end

	it 'returns height' do
		@drawing_program.determine_size_of_canvas("C 20 4")
		expect(@drawing_program.height).to eq "4"
	end

	it 'returns width' do
		@drawing_program.determine_size_of_canvas("C 20 4")
		expect(@drawing_program.width).to eq "20"
	end

end