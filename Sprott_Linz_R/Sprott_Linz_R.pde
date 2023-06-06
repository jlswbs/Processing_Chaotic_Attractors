// Sprott-Linz R chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.02;
  float a = 0.9;
  float b = 0.4;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (a - ny);
    y = ny + dt * (b + nz);
    z = nz + dt * (nx * ny - nz); 
    
    point(410 + (50 * x), 170 + (30 * y));
        
  }

}
