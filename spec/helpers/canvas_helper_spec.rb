require 'spec_helper'

=begin
I am using the + method to prevent tests 
from breaking through any change of identation. 
It´s also supposed to be a visual aid.
=end 

def canvas_20_by_4
    "----------------------\n" +
    "|                    |\n" +
    "|                    |\n" +
    "|                    |\n" +
    "|                    |\n" +
    "----------------------"
end

def canvas_10_by_5
    "------------\n" +
    "|          |\n" +
    "|          |\n" +
    "|          |\n" +
    "|          |\n" +
    "|          |\n" +
    "------------"
end

def canvas_with_horizontal_line_1
    "----------------------\n" +
    "|                    |\n" +
    "|XXXXXX              |\n" +
    "|                    |\n" +
    "|                    |\n" +
    "----------------------"
end

def canvas_with_horizontal_line_2
    "----------------------\n" +
    "|                    |\n" +
    "| XXXXX              |\n" +
    "|                    |\n" +
    "|                    |\n" +
    "----------------------"
end

def canvas_with_horizontal_line_3
    "--------------------\n" +
    "|                  |\n" +
    "|                  |\n" +
    "|  XXXXXXX         |\n" +
    "|                  |\n" +
    "|                  |\n" +
    "--------------------"
end

def canvas_with_horizontal_line_4
    "------------\n" +
    "|          |\n" +
    "|          |\n" +
    "|          |\n" +
    "|          |\n" +
    "|    XXX   |\n" +
    "|          |\n" +
    "|          |\n" +
    "|          |\n" +
    "------------"
end

def canvas_with_horizontal_line_5
  "----------------------------------------------------\n" +
  "|                                                  |\n" +
  "|                                                  |\n" +
  "|                                                  |\n" +
  "|                                                  |\n" +
  "|                                                  |\n" +
  "|                                                  |\n" +
  "|                                                  |\n" +
  "|                                                  |\n" +
  "|                                                  |\n" +
  "|                                                  |\n" +
  "|                                                  |\n" +
  "|                                                  |\n" +
  "|                                                  |\n" +
  "|                                                  |\n" +
  "|                                            XXXXX |\n" +
  "|                                                  |\n" +
  "----------------------------------------------------"
end

def canvas_with_vertical_line_1
  "----------------------\n" +
  "|                    |\n" +
  "|                    |\n" +
  "|     X              |\n" +
  "|     X              |\n" +
  "----------------------"
end

def canvas_with_vertical_line_2
  "----------------------\n" +
  "|                    |\n" +
  "|     X              |\n" +
  "|     X              |\n" +
  "|     X              |\n" +
  "----------------------"
end

def canvas_with_vertical_line_3
  "----------------------\n" +
  "|     X              |\n" +
  "|     X              |\n" +
  "|     X              |\n" +
  "|     X              |\n" +
  "----------------------"
end

def canvas_with_vertical_line_4
  "--------------------\n" +
  "|   X              |\n" +
  "|   X              |\n" +
  "|   X              |\n" +
  "|                  |\n" +
  "|                  |\n" +
  "--------------------"
end

def canvas_with_box_1
  "----------------------\n" +
  "|               XXXXX|\n" +
  "|               X   X|\n" +
  "|               XXXXX|\n" +
  "|                    |\n" +
  "----------------------"
end

def canvas_with_box_2 
  "--------------------\n" +
  "|                  |\n" +
  "|             XXX  |\n" +
  "|             X X  |\n" +
  "|             XXX  |\n" +
  "|                  |\n" +
  "--------------------"
end
