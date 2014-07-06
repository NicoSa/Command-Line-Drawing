module BoxHelper

=begin
the coordinates passed to the draw box outline represent
all the combinations necessary to draw a box from two given 
coordinates on the canvas
=end
  def precompile_box_data(coordinates)
  	set_box_corners(coordinates)
    draw_box_outline("L #{@a} #{@b} #{@c} #{@b}")
    draw_box_outline("L #{@a} #{@d} #{@c} #{@d}")
    draw_box_outline("L #{@a} #{@b} #{@a} #{@d}")
    draw_box_outline("L #{@c} #{@b} #{@c} #{@d}")
  end

  def set_box_corners(coordinates)
    box_corners_array = convert_coordinates_to_array(coordinates)
    @a, @b, @c, @d = box_corners_array[0].to_i, box_corners_array[1].to_i, box_corners_array[2].to_i, box_corners_array[3].to_i
  end

  def draw_box_outline(coordinates)
    set_line_variables(coordinates)
    calculate_horizontal_line_array
    draw_line_on_canvas
  end
end
