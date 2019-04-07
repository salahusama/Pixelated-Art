int colorSize = 50;
int cellGranularity = 20; // More granular is smaller cell size

color[] colors = {
  color(255),
  color(255, 255, 50),
  color(255, 100, 50),
  color(100, 255, 50),
  color(0)
};

ColorPicker colorPicker;
Canvas canvas;

void setup() {
  size(500, 500);
  colorPicker = new ColorPicker(10, 10, colorSize, colors);
  canvas = new Canvas(height - 200, cellGranularity, colorPicker);
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
