class ColorPicker {
  ArrayList<Color> colors;
  Color selectedColor;
  int startX, startY, colorSize;

  public ColorPicker(int startX, int startY, int colorSize, color[] colorOptions) {
    colors = new ArrayList<Color>();
    this.startX = startX;
    this.startY = startY;
    this.colorSize = colorSize;

    for (int i = 0; i < colorOptions.length; i++) {
      color c = colorOptions[i];
      int x = startX + (colorSize * i) + (5 * i);
      colors.add(new Color(x, startY, colorSize, c));
    }
    
    selectedColor = colors.get(0);
  }

  public void render() {
    for (Color c : colors) {
      c.render(c == selectedColor);
    }
  }
  
  public color getSelectedColor() {
    return selectedColor.getColor();
  }

  public void onClick() {
    for (Color c : colors) {
      if (c.isMouseOver()) {
        selectedColor = c;
      }
    }
  }
}
