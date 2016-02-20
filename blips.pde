int[] x;
int[] count;

void setup() {
  size(500, 500);
  x = new int[height];
  count = new int[height];
  for (int i = 0; i < height; i++) {
    count[i] = 30;
  }
}

void draw() {
  background(255);

  for (int i = 0; i < height; i++) {
    if (count[i] < 30) {
      if (count[i] < 15) {
        line(x[i], i, x[i] + count[i]*10, i);
        
        if(count[i] == 4) {
          println("length: " + count[i]*10);//the length of the fifth drawn segment is 40
        }
      } else {
        line(x[i] + (count[i] - 15)*10, i, x[i] + 150, i);
      }
    }
    count[i]++;
    //println("value: " + count[i]);//highest possible value assigned is 2,147,483,647
  }

  if (mousePressed) {
    x[mouseY] = mouseX;
    count[mouseY] = 0;
  }
}
