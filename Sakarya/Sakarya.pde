// Sakarya chaotic attractor //

  float x = 1.0;
  float y = -1.0;
  float z = 1.0;
  float dt = 0.005;
  float a = 0.3199;
  float b = 0.9;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (- nx + ny + ny * nz);
    y = ny + dt * (- nx - ny + a * nx * nz);
    z = nz + dt * (nz - b * nx * ny); 
  
    point(320 + (25 * x), 240 + (47 * y));
        
  }

}
