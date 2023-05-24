// Bouali chaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 0.0;
  float dt = 0.005;
  float a = 0.3;
  float s = 1.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (nx * (4.0 - ny) + a * nz);
    y = ny + dt * (- ny * (1.0 - (nx * nx)));
    z = nz + dt * (- nx * (1.5 - s * nz) - 0.05 * nz); 

    point(320 + (70 * x), 35 + (20 * y));
        
  }

}
