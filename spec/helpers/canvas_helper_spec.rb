require 'spec_helper'

=begin 
I am adding the strings to prevent tests 
from breaking through any change of identation
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

def canvas_with_line_1
	"----------------------\n" +
	"|                    |\n" +
	"|XXXXXX              |\n" +
	"|                    |\n" +
	"|                    |\n" +
	"----------------------"
end

def canvas_with_line_2
	"----------------------\n" +
	"|                    |\n" +
	"| XXXXX              |\n" +
	"|                    |\n" +
	"|                    |\n" +
	"----------------------"
end

def canvas_with_line_3
	"--------------------\n" +
	"|                  |\n" +
	"|                  |\n" +
	"|  XXXXXXX         |\n" +
	"|                  |\n" +
    "|                  |\n" +
    "--------------------"
end

def canvas_with_line_4
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