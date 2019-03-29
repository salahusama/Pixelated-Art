class Cell {
  int x, y;
  int size;
  color c;
  
  public Cell(int x, int y, int size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }

  public void render() {
    fill(c);
    stroke(255);
    strokeWeight(1);
    rect(x, y, size, size);
  }
  
  private boolean isMouseOver() {
    if (mouseX > x && mouseX < x + size && mouseY > y && mouseY < y + size) {
      return true;
    }
    return false;
  }
}
