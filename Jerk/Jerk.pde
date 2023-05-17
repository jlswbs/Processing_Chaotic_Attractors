// Jerk chaotic system //

  float x = 0.02;
  float y = 0.0;
  float h = 0.01;
  float a = 0.0;
  float b = 2.017;
  float j = 0.0;

void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
        
    x = x + h * y;
    y = y + h * a;
    j = -b * a + pow(y, 2.0) - x;
    a = a + h * j;
  
    point(110 + (60 * x), 270 + (75 * y));
        
  }

}
