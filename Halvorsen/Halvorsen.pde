// Halvorsen chaotic attractor //

  float x = 1.0;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.004;
  float a = 1.4;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (- a * nx - 4.0 * ny - 4.0 * nz - pow(ny, 2.0));
    y = ny + dt * (- a * ny - 4.0 * nz - 4.0 * nx - pow(nz, 2.0));
    z = nz + dt * (- a * nz - 4.0 * nx - 4.0 * ny - pow(nx, 2.0)); 
  
    point(410 + (24 * x), 305 + (18 * y));
        
  }

}
