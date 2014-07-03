require 'drawing_program'
require 'canvas_helper_spec'

describe 'Drawing Program' do

	it 'creates a canvas of size x by y' do
		expect(create_canvas("C 20 4")).to eq canvas
	end

end