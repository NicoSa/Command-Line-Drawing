require 'spec_helper'

describe 'Draw' do

  before(:each) do
    @drawing_program = Draw.new
  end

  context 'Canvas' do

    it 'creates a canvas of size 20 by 4' do
      expect(create_canvas("C 20 4")).to eq canvas_20_by_4
    end

    it 'creates a canvas of size 10 by 5' do
      expect(create_canvas("C 10 5")).to eq canvas_10_by_5
    end
  end

  context 'Horizontal line' do

    it 'creates a horizontal line from 1,2 to 6,2' do
      create_canvas("C 20 4")
      expect(draw_line("L 1 2 6 2")).to eq canvas_with_horizontal_line_1
    end

    it 'creates a horizontal line from 2,2 to 6,2' do
      create_canvas("C 20 4")
      expect(draw_line("L 2 2 6 2")).to eq canvas_with_horizontal_line_2
    end

    it 'creates a horizontal line from 3,3 to 9,3' do
      create_canvas("C 18 5")
      expect(draw_line("L 3 3 9 3")).to eq canvas_with_horizontal_line_3
    end

    it 'creates a horizontal line from 5,5 to 7,5' do
      create_canvas("C 10 8")
      expect(draw_line("L 5 5 7 5")).to eq canvas_with_horizontal_line_4
    end

    it 'creates a horizontal line from 45,15 to 49,15' do
      create_canvas("C 50 16")
      expect(draw_line("L 45 15 49 15")).to eq canvas_with_horizontal_line_5
    end
  end

  context 'Vertical Line' do

    it 'creates a vertical line from 6,3 to 6,4' do
      create_canvas("C 20 4")
      expect(draw_line("L 6 3 6 4")).to eq canvas_with_vertical_line_1
    end

    it 'creates a vertical line from 6,2 to 6,4' do
      create_canvas("C 20 4")
      expect(draw_line("L 6 2 6 4")).to eq canvas_with_vertical_line_2
    end

    it 'creates a vertical line from 6,1 to 6,4' do
      create_canvas("C 20 4")
      expect(draw_line("L 6 1 6 4")).to eq canvas_with_vertical_line_3
    end

    it 'creates a vertical line from 4,1 to 4,3' do
      create_canvas("C 18 5")
      expect(draw_line("L 4 1 4 3")).to eq canvas_with_vertical_line_4
    end
  end

  context 'Box' do

  	it 'creates a box with the left upper corner at 16,1 and the right lower corner at 20,3' do
  		create_canvas("C 20 4")
  		expect(@drawing_program.draw_box("R 16 1 20 3")).to eq canvas_with_box_1
  	end

    it 'creates a box with the left upper corner at 14,2 and the right lower corner at 16,4' do
      create_canvas("C 18 5")
      expect(@drawing_program.draw_box("R 14 2 16 4")).to eq canvas_with_box_2
    end
  end
end
