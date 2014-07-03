require 'spec_helper'

describe 'Drawing Program Helper' do

	before(:each) do
		@drawing_program = DrawingProgram.new
	end

	it 'returns array of coordinates' do
		expect(extract_coordinates("C 20 4")).to eq ["20","4"]
	end

	it 'returns height' do
		@drawing_program.extract_coordinates("C 20 4")
		expect(@drawing_program.height).to eq "20"
	end

	it 'returns width' do
		@drawing_program.extract_coordinates("C 20 4")
		expect(@drawing_program.width).to eq "4"
	end

end