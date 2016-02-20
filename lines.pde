size(400, 400);
background(255);
int countertotal = 0;
int counterhorizontal = 0;
int countervertical = 0;

for (int x = 0; x <= width; x += 10) {
  for (int y = 0; y <= height; y += 10) {
    float dx = 7*(1-2.0*x/width);
    float dy = 7*(1-2.0*y/height);
    if (y == y+dy) {
      counterhorizontal= counterhorizontal + 1;
    }
    if (x == x+dx) {
      countervertical = countervertical +1;
    }
    line(x, y, x+dx, y+dy);
    countertotal = countertotal+ 1;
  }
}

println("countertotal"+countertotal);//countertotal1681
println("counterhorizontal"+counterhorizontal);//counterhorizontal41 
println("countervertical"+countervertical);//countervertical41 
