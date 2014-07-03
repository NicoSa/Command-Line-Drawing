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
	"|xxxxxx              |\n" +
	"|                    |\n" +
	"|                    |\n" +
	"----------------------"
end

def canvas_with_line_2
	"----------------------\n" +
	"|                    |\n" +
	"|                    |\n" +
	"|xxxxxx              |\n" +
	"|                    |\n" +
	"----------------------"
end