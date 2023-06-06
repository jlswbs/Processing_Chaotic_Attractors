// Sprott-Linz O chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.006;
  float a = 2.7;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (ny);
    y = ny + dt * (nx - nz);
    z = nz + dt * (nx + nx * nz + a * ny); 
    
    point(470 + (380 * x), 290 + (300 * y));
        
  }

}
