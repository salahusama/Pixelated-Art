class Canvas {
  Cell[][] grid;
  ColorPicker colorPicker;
  int startX, startY;
  int granularity;

  public Canvas(int size, int granularity, ColorPicker colorPicker) {
    int cellSize = size / granularity;
    this.colorPicker = colorPicker;
    this.granularity = granularity;
    
    grid = new Cell[granularity][granularity];
    startX = (width - size) / 2;
    startY = height - size - 50;
    
    // Populate the grid
    for (int row = 0; row < granularity; row++) {
      for (int col = 0; col < granularity; col++) {
        int x = startX + (cellSize * row);
        int y = startY + (cellSize * col);
        grid[row][col] = new Cell(x, y, cellSize);
      }
    }
  }
  
  public void render() {
    for (int row = 0; row < granularity; row++) {
      for (int col = 0; col < granularity; col++) {
        Cell cell = grid[row][col];
        cell.render();
      }
    }
  }

  public void onClick() {
    for (int row = 0; row < granularity; row++) {
      for (int col = 0; col < granularity; col++) {
        Cell cell = grid[row][col];
        if (cell.isMouseOver()) {
          cell.c = colorPicker.getSelectedColor();
        }
      }
    }
  }
}
