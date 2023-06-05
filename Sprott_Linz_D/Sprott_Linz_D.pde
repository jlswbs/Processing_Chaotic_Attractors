// Sprott-Linz D chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.01;
  float a = 3.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (-ny);
    y = ny + dt * (nx + nz);
    z = nz + dt * (nx * nz + a * pow(ny, 2.0)); 
  
    point(580 + (60 * x), 240 + (50 * y));
        
  }

}
