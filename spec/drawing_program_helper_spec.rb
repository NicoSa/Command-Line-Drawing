require 'spec_helper'

describe 'Drawing Program Helper' do

  before(:each) do
    @drawing_program = DrawingProgram.new
  end

  it 'returns array of coordinates' do
    expect(convert_coordinates_to_array("C 20 4")).to eq ["20","4"]
  end

  it 'returns height' do
    @drawing_program.create_canvas("C 20 4")
    expect(@drawing_program.height).to eq "4"
  end

  it 'returns width' do
    @drawing_program.create_canvas("C 20 4")
    expect(@drawing_program.width).to eq "20"
  end

  it 'converts canvas to string' do
    @canvas_array = convert_coordinates_to_array("C 20 4")
    @canvas = convert_canvas_to_string
    expect(@canvas).to eq canvas_20_by_4
  end

end
