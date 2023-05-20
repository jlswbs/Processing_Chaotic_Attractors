// PWCS chaotic attractor //

  float x = -4.0;
  float y = 1.0;
  float z = -4.0;
  float dt = 0.005;
  float a = 2.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (ny * (1.0 - nz));
    y = ny + dt * (ny * (1.0 + nz) - a * nx);
    z = nz + dt * (a - nx * ny - pow(ny, 2.0));
  
    point(320 + (55 * x), 240 + (35 * y));
        
  }

}
