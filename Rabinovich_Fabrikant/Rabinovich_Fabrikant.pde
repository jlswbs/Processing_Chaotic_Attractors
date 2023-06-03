// Rabinovich-Fabrikant chaotic attractor //

  float x = -1.05;
  float y = 0.9;
  float z = 1.01;
  float dt = 0.005;
  float a = 1.1;
  float b = 0.84;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (ny * (nz - 1.0 + pow(nx, 2.0)) + b * nx);
    y = ny + dt * (nx * (3.0 * nz + 1.0 - pow(nx, 2.0)) + b * ny);
    z = nz + dt * (-2.0 * nz * (a + nx * ny));
  
    point(690 + (340 * x), 75 + (150 * y));
        
  }

}
