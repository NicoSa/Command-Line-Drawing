require 'spec_helper'

describe 'Line Helper' do

  before(:each) do
    @drawing_program = DrawingProgram.new
  end

  it 'has set line variables' do
    set_line_variables("L 1 2 6 2")
    expect(@x1).to eq 1
    expect(@y1).to eq 2
    expect(@x2).to eq 6
    expect(@y2).to eq 2
  end

  it 'calculates horizontal line array for a canvas of 20,4 and a horizontal line of 1,2 6,2' do
    create_canvas("C 20 4")
    @drawing_program.set_line_variables("L 1 2 6 2")
    @drawing_program.calculate_horizontal_line_array
    expect(@drawing_program.line_array).to eq [47, 48, 49, 50, 51, 52]
  end

  it 'calculates horizontal line array for a canvas of 10,5 and a horizontal line of 3,3 9,3' do
    create_canvas("C 18 5")
    @drawing_program.set_line_variables("L 3 3 9 3")
    @drawing_program.calculate_horizontal_line_array
    expect(@drawing_program.line_array).to eq [66, 67, 68, 69, 70, 71, 72]
  end

  it 'display canvas with horizontal line for a canvas of 10,5 and a horizontal line of 3,3 9,3 and precompile_horizontal_line_data method works' do
    create_canvas("C 18 5")
    @drawing_program.precompile_line_data("L 3 3 9 3")
    expect(@drawing_program.display_canvas_with_line).to eq canvas_with_horizontal_line_3
  end

  it 'calculate vertical line array for a canvas of 20,4 and a vertical line of 6,3 to 6,4' do
    create_canvas("C 20 4")
    @drawing_program.set_line_variables("L 6 3 6 4")
    @drawing_program.calculate_vertical_line_array
    expect(@drawing_program.line_array).to eq [75, 98]
  end

  it 'calculate vertical line array for a canvas of 20,4 and a vertical line of 5,2 to 5,4' do
    create_canvas("C 20 4")
    @drawing_program.set_line_variables("L 5 2 5 4")
    @drawing_program.calculate_vertical_line_array
    expect(@drawing_program.line_array).to eq [51, 74, 97]
  end

  it 'calculate vertical line array for a canvas of 20,4 and a vertical line of 5,2 to 5,4' do
    create_canvas("C 20 4")
    @drawing_program.set_line_variables("L 5 1 5 4")
    @drawing_program.calculate_vertical_line_array
    expect(@drawing_program.line_array).to eq [28, 51, 74, 97]
  end
end
