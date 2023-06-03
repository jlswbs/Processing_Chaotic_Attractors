// Chen chaotic attractor //

  float x = -3.0;
  float y = 2.0;
  float z = 20.0;
  float dt = 0.0005;
  float a = 35.0;
  float b = 2.666;
  float c = 28.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * (ny - nx));
    y = ny + dt * ((c - a) * nx - nx * nz + c * ny);
    z = nz + dt * (nx * ny - b * nz);
  
    point(320 + (11 * x), 240 + (7 * y));
        
  }

}
