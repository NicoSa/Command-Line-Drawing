module LineHelper

  attr_reader :line_array, :canvas, :canvas_array, :x1, :x2, :y1, :y2

  def set_line_variables(coordinates)
    horizontal_line_array = convert_coordinates_to_array(coordinates)
    @x1, @y1, @x2, @y2  = horizontal_line_array[0], horizontal_line_array[1], horizontal_line_array[2], horizontal_line_array[3]
  end

  def calculate_horizontal_line_array
    return calculate_vertical_line_array if @x1 == @x2

    horizontal_starting_point = ((@y1.to_i *  (width.to_i + 2)) + 1) + @x1.to_i + (y2.to_i - 1)
    horizontal_end_point = horizontal_starting_point + (@x2.to_i - @x1.to_i)

    @line_array = [*(horizontal_starting_point...(horizontal_end_point + 1))]
  end

  def calculate_vertical_line_array
    vertical_starting_point = ((@y1.to_i * (width.to_i + 2)) + 1) + @x1.to_i + (y1.to_i - 1)
    vertical_end_point = vertical_starting_point + ((@y2.to_i - @y1.to_i) * (width.to_i + 2))
    

    @line_array = [vertical_starting_point, (vertical_end_point + 1)]
  end

  def display_canvas_with_line
    @canvas.chars.map.with_index do |elem,index|
      if @line_array.include?(index)
        elem = "X"
      else
        elem
      end
    end.join
  end

  def precompile_line_data(coordinates)
    set_line_variables(coordinates)
    calculate_horizontal_line_array
  end
end