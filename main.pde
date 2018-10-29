Hexagon hexagon = new Hexagon();
int size = 100;


void setup() {
  size(1280, 920);
}

void draw() {
  background(102);
  makeGrid();
}

void makeGrid() {
  int gridWith = width/size;
  int gridHeight = height/size;
  
  for(int i = 0; i < (gridHeight); i++){
    for(int j = 0; j < (gridWith); j++){
      if((j % 2) == 0){
        hexagon.makeHexagon(3 * size * i, .866 * size * j, size);
      } else {
        hexagon.makeHexagon(3 * size * (i + .5), .866 * size * j, size);
      }
    }
  }
}
