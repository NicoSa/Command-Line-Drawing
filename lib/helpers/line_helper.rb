module LineHelper

  attr_reader :line_array, :canvas, :canvas_array, :x1, :x2, :y1, :y2

  def set_line_variables(coordinates)
    horizontal_line_array = convert_coordinates_to_array(coordinates)
    @x1, @y1, @x2, @y2 = horizontal_line_array[0].to_i, horizontal_line_array[1].to_i, horizontal_line_array[2].to_i, horizontal_line_array[3].to_i
  end

  def calculate_horizontal_line_array
    return calculate_vertical_line_array if @x1 == @x2
    @line_array = [*(horizontal_starting_point...horizontal_end_point)]
  end

  def concat_vertical_line_array
    @line_array << vertical_starting_point
    add_rest_of_vertical_points
  end

  def calculate_vertical_line_array
    concat_vertical_line_array
    @line_array
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

  def vertical_starting_point
    (vertical_starting_point = ((@y1 * (width + 2)) + 1) + @x1 + (y1 - 1))
  end

  def add_rest_of_vertical_points
    (1).upto(@y2 - @y1) do |row|
      @line_array << (vertical_starting_point + ( row * (width + 2)) + 1 + (row - 1))
    end
  end

  def horizontal_starting_point
    ((@y1 * (width.to_i + 2)) + 1) + @x1 + (y2 - 1)
  end

  def horizontal_end_point
    horizontal_starting_point + (@x2 - @x1) + 1
  end
end
