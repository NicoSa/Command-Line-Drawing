class Draw

  attr_reader :canvas, :canvas_array

  def initialize
    @line_array = []
    @canvas = ""
  end

  def create_canvas(coordinates)
    precompile_canvas_data(coordinates)
    @canvas
  end

  def draw_line(coordinates)
    precompile_line_data(coordinates)
    @canvas
  end

  def draw_box(coordinates)
    precompile_box_data(coordinates)
    @canvas
  end
end
