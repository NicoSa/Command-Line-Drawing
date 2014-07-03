require 'drawing_program'
require 'canvas_helper_spec'

describe 'Drawing Program' do

	it 'creates a canvas of size 20 by 4' do
		expect(create_canvas("C 20 4")).to eq canvas_20_by_4
	end

	it 'creates a canvas of size 10 by 5' do
		expect(create_canvas("C 10 5")).to eq canvas_10_by_5
	end
end