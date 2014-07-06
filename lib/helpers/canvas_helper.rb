module CanvasHelper

  def precompile_canvas_data(coordinates)
  	@canvas_array = convert_coordinates_to_array(coordinates)
    @canvas = convert_canvas_to_string
  end

  def convert_coordinates_to_array(coordinates)
    coordinates.split.drop(1)
  end

  def height
    @canvas_array[1].to_i
  end

  def width
    @canvas_array[0].to_i
  end

  def convert_canvas_to_string
    calculate_canvas_string
  end

end
