// Four wing Lorenz chaotic attractor //

  float x1 = 1.0;
  float y1 = 0.0;
  float z1 = 0.0;
  float x2 = 1.0;
  float y2 = 0.0;
  float z2 = 0.0;
  float dt = 0.005;
  float o = 10.0;
  float p = 28.0;
  float b = 8.0/3.0;
  float k = 0.1;


void setup() {
  
  size(640,480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
        
    x1 = x1 + dt * (o * (y1 - x1));
    y1 = y1 + dt * (p * x1 - y1 - x1 * z1 + k * (x2 - y2));
    z1 = z1 + dt * (x1 * y1 - b * z1);
    x2 = x2 + dt * (o * (y2 - x2));
    y2 = y2 + dt * (p * x2 - y2 - x2 * z2 + k * (x1 - y1));
    z2 = z2 + dt * (x2 * y2 - b * z2); 
  
    point(320 + (13 * x1), 240 + (10 * x2));
        
  }

}
