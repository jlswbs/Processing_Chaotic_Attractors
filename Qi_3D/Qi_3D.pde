// Qi-3D chaotic attractor //

  float x = 3.0;
  float y = -4.0;
  float z = 3.0;
  float dt = 0.0002;
  float a = 16.0;
  float b = 43.0;
  float c = -16.0;
  float d = 16.0;
  float e = 1.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * (ny - nx) + e * ny * nz);
    y = ny + dt * (c * nx + d * ny - nx * nz);
    z = nz + dt * (nx * ny - b * nz);
  
    point(320 + x, 240 + (0.8 * y));
        
  }

}
