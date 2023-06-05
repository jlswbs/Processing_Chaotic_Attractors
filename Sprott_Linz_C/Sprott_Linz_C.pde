// Sprott-Linz C chaotic attractor //

  float x = 1.0;
  float y = 0.0;
  float z = 1.0;
  float dt = 0.01;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (ny * nz);
    y = ny + dt * (nx - ny);
    z = nz + dt * (1.0 - pow(nx, 2.0)); 
  
    point(320 + (70 * x), 240 + (85 * y));
        
  }

}
