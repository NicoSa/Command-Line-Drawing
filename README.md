Command-Line-Drawing
====================

Technical Test I´m doing at the moment. The aim is to have a simple command line drawing program where you can create a canvas, draw horizontal and vertical lines and fill-in parts of the screen.

How to use
---
```sh
git clone git@github.com:NicoSa/Command-Line-Drawing.git
cd drawing-program
./start_drawing.rb
```

- Create Canvas

```sh
C 20 4
```
Which will create a canvas of 20 width and 4 height

- Draw Line
```sh
L 5 1 9 1
```sh

Which will create a line from 5 to 9 on line 1

- Draw Rectangle
```sh
R 5 1 8 3
```

Which will create a box with the upper left corner at 5 line 1 and the lower right corner at 8 line 3
