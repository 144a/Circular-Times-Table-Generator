
int dotnum = 200;
int radius = 2000;
int dotrad = 10;
int offset = 1000;

void setup() {
  size(2000, 2000);
  background(255);
  noFill();
  frameRate(120);
  
  
}

int n = 0;

void draw() {
  if(n < 10000) {
    n++;
  }
    println(n / 100.0);
    background(255);
  
    createCirTab(n / 100.0);
  
  
}

void keyPressed() {
  exit();
}

void createCirTab(float inputnum) {
  ellipse(offset, offset, radius, radius);
  for(int i = 0; i < dotnum; i++) {
    ellipse((radius / 2) * cos(((2 * PI) / dotnum) * i ) + offset, (radius / 2) * sin(((2 * PI) / dotnum) * i ) + offset, dotrad, dotrad);
  }
  for(int i = 0; i <= dotnum; i++) {
    
    line((radius / 2) * cos(PI + ((2 * PI) / dotnum) * ((i  * inputnum) % dotnum)) + offset, (radius / 2) * sin(PI + ((2 * PI) / dotnum) * ((i * inputnum) % dotnum)) + offset, (radius / 2) * cos(PI + ((2 * PI) / dotnum) * i) + offset, (radius / 2) * sin(PI + ((2 * PI) / dotnum) * i) + offset);
    // println(((i * inputnum) % dotnum) + "  " + i);
    
  }
}
