final int GRID_SIZE = 10;// final - value can not be change
final float GRID_PADDING = 50;

void setup() {
  size(500, 500);
  mouseX = mouseY = 250;
}


float gridToCoordinates(int input) {
  return GRID_PADDING+input*(500 - 2*GRID_PADDING)/(GRID_SIZE-1);
}//gridToCoorninates=50+input*(400/9)

void draw() {
  background(0);

  noStroke();
  fill(255);
  for (int i = 0; i < GRID_SIZE; ++i) {//run 9 times   for(start;stop;step)
    for (int j = 0; j < GRID_SIZE; ++j) {// run 9 times
      float distance = sqrt(pow(mouseX-gridToCoordinates(i), 2) + pow(mouseY-gridToCoordinates(j), 2)); //pow(n,e)=n'e
      float ellipseSize = min(66, 1000.0/distance);// choose the smallest number
      ellipse(gridToCoordinates(i), gridToCoordinates(j), ellipseSize, ellipseSize);
    }
  }
}
