module HorizontalLineHelper

  def set_horizontal_line_array_variables(coordinates)
    horizontal_line_array = convert_coordinates_to_array(coordinates)
    @x1, @y1, @x2, @y2 = horizontal_line_array[0], horizontal_line_array[1], horizontal_line_array[2], horizontal_line_array[3]
  end

  def calculate_horizontal_line_array
    horizontal_starting_point = ((@x1.to_i * width.to_i ) + 2) + @y1.to_i
    horizontal_end_point = horizontal_starting_point + @y2.to_i

    @line_array = [*(horizontal_starting_point...horizontal_end_point)]
  end

  def display_canvas_with_horizontal_line
    @canvas.chars.map.with_index do |elem,index|
      if @line_array.include?(index)
        elem = "X"
      else
        elem
      end
    end.join
  end

  def precompile_horizontal_line_data(coordinates)
    set_horizontal_line_array_variables(coordinates)
    calculate_horizontal_line_array
  end
end