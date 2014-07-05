require 'spec_helper'

describe 'Drawing Line Helper' do

  before(:each) do
    @drawing_program = DrawingProgram.new
  end

  it 'has set horizontal line variables' do
    set_horizontal_line_array_variables("H 1 2 6 2")
    expect(@x1).to eq "1"
    expect(@y1).to eq "2"
    expect(@x2).to eq "6"
    expect(@y2).to eq "2"
  end

  it 'calculates horizontal line array for a canvas of 20,4 and a horizontal line of 1,2 6,2' do
	@drawing_program.create_canvas("C 20 4")
	@drawing_program.set_horizontal_line_array_variables("H 1 2 6 2")
    @drawing_program.calculate_horizontal_line_array
    expect(@drawing_program.line_array).to eq [46, 47, 48, 49, 50, 51]
  end

  it 'calculates horizontal line array for a canvas of 10,5 and a horizontal line of 3,3 9,3' do
	@drawing_program.create_canvas("C 18 5")
	@drawing_program.set_horizontal_line_array_variables("H 3 3 9 3")
    @drawing_program.calculate_horizontal_line_array
    expect(@drawing_program.line_array).to eq [64, 65, 66, 67, 68, 69, 70]
  end

  it 'display canvas with horizontal line for a canvas of 10,5 and a horizontal line of 3,3 9,3' do
  	@drawing_program.create_canvas("C 18 5")
  	@drawing_program.precompile_horizontal_line_data("H 3 3 9 3")
  	expect(@drawing_program.display_canvas_with_horizontal_line).to eq canvas_with_line_3
  end
end
