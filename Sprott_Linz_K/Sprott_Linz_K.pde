// Sprott-Linz K chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.02;
  float a = 0.3;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (nx * ny - nz);
    y = ny + dt * (nx - ny);
    z = nz + dt * (nx + a * nz); 
    
    point(420 + (105 * x), 270 + (120 * y));
        
  }

}
