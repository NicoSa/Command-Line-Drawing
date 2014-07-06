module LineHelper

  attr_reader :line_array, :canvas, :canvas_array, :x1, :x2, :y1, :y2

  def precompile_line_data(coordinates)
    set_line_variables(coordinates)
    calculate_horizontal_line_array
    draw_line_on_canvas
  end
  
  def set_line_variables(coordinates)
    horizontal_line_array = convert_coordinates_to_array(coordinates)
    @x1, @y1, @x2, @y2 = horizontal_line_array[0].to_i, horizontal_line_array[1].to_i, horizontal_line_array[2].to_i, horizontal_line_array[3].to_i
  end

  def concat_vertical_line_array
    @line_array << vertical_starting_point
    add_rest_of_vertical_points
  end

  def draw_line_on_canvas
    @canvas = @canvas.chars.map!.with_index do |elem,index|
      if @line_array.include?(index)
        elem = "X"
      else
        elem
      end
    end.join
    return true
  end

end
