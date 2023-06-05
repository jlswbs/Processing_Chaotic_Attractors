// Sprott-Linz G chaotic attractor //

  float x = 1.0;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.02;
  float a = 0.4;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (a * nx + nz);
    y = ny + dt * (-nx * nz - ny);
    z = nz + dt * (-nx + ny); 
  
    point(210 + (135 * x), 150 + (95 * y));
        
  }

}
