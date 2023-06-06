// Sprott-Linz I chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.02;
  float a = -0.2;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (a * ny);
    y = ny + dt * (nx + nz);
    z = nz + dt * (nx + pow(ny, 2.0) - nz); 
  
    point(500 + (780 * x), 270 + (210 * y));
        
  }

}
