class Color {
  private color c;
  private int x;
  private int y;
  private int size;

  public Color(int x, int y, int size, color c) {
    this.x = x;
    this.y = y;
    this.c = c;
    this.size = size;
  }
  
  public void render(boolean selected) {
    stroke(255);
    if (selected) {
      strokeWeight(3);
    } else {
      strokeWeight(1);
    }
    
    fill(c);
    rect(x, y, size, size);
  }
  
  public color getColor() {
    return c;
  }

  private boolean isMouseOver() {
    if (mouseX > x && mouseX < x + size && mouseY > y && mouseY < y + size) {
      return true;
    }
    return false;
  }
}
