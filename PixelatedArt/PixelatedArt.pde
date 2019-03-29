color[] colors = {
  color(0),
  color(255, 255, 50),
  color(255, 100, 50),
  color(100, 255, 50)
};
ColorPicker colorPicker;
Canvas canvas;

void setup() {
  size(500, 500);
  colorPicker = new ColorPicker(10, 10, 50, colors);
  canvas = new Canvas(height - 200, 10, colorPicker);
}

void draw() {
  background(0);
  
  colorPicker.render();
  canvas.render();
}

void mousePressed() {
  colorPicker.onClick();
  canvas.onClick();
}
