require 'spec_helper'

describe 'Draw Helper' do

  before(:each) do
    @drawing_program = Draw.new
  end

  it 'returns array of coordinates' do
    expect(convert_coordinates_to_array("C 20 4")).to eq ["20","4"]
  end

  it 'returns height' do
    create_canvas("C 20 4")
    expect(@drawing_program.height).to eq 4
  end

  it 'returns width' do
    create_canvas("C 20 4")
    expect(@drawing_program.width).to eq 20
  end

  it 'converts canvas to string' do
    @canvas_array = convert_coordinates_to_array("C 20 4")
    @canvas = convert_canvas_to_string
    expect(@canvas).to eq canvas_20_by_4
  end
end
