// Qi-Chen chaotic attractor //

  float x = 3.0;
  float y = -4.0;
  float z = 3.0;
  float dt = 0.0005;
  float a = 38.0;
  float b = 8.0 / 3.0;
  float c = 80.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * (ny - nx) + ny * nz);
    y = ny + dt * (c * nx + ny - nx * nz);
    z = nz + dt * (nx * ny - b * nz);
  
    point(320 + (2.5 * x), -20 + (3 * z));
        
  }

}
