require 'spec_helper'

describe 'Box Helper' do

  before(:each) do
    @drawing_program = Draw.new
  end

  it 'precompiles box data for coordinates' do
    create_canvas("C 18 5")
    @drawing_program.precompile_box_data("R 14 2 16 4")
    expect(@drawing_program.line_array).to eq [56, 57, 58, 98, 99, 100, 56, 77, 98, 58, 79, 100]
    expect(@drawing_program.canvas).to eq canvas_with_box_2
  end

  it 'sets box corners' do
    set_box_corners("R 14 2 16 4")
    expect(@a).to eq 14
    expect(@b).to eq 2
    expect(@c).to eq 16
    expect(@d).to eq 4
  end
end
