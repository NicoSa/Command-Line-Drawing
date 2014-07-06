require './lib/draw.rb'
require './lib/helpers/draw_helper.rb'
require './lib/helpers/line_helper.rb'
include DrawHelper
include LineHelper

answer = ""
@new_drawing = Draw.new

while answer.downcase != "q"
  puts "enter command:"
  answer = gets.chomp!
  if answer.split.first.downcase == "c"
    puts @new_drawing.create_canvas(answer)
    puts canvas
  elsif answer.split.first.downcase == "l"
    puts @new_drawing.draw_line(answer)
  elsif answer.split.first.downcase == "r"
    puts @new_drawing.draw_box(answer)
  else
    puts "Can´t understand this command - press Q to quit!"
  end
end

puts "Goodbye!"