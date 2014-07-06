module CoordinateCalculator

  def calculate_horizontal_line_array
    return calculate_vertical_line_array if @x1 == @x2
    [*(horizontal_starting_point...horizontal_end_point)].map{|elem| @line_array << elem}
  end

  def calculate_vertical_line_array
    concat_vertical_line_array
    @line_array
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

  def calculate_canvas_string
    ((("-" ) * width.to_i) +
     ("--\n") +
     (("|" + (" " * (width.to_i)) + "|\n") * height.to_i) +
     (("-" ) * width.to_i) + "--").to_s
  end
end
