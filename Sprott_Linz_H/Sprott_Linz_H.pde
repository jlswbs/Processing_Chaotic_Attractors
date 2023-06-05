// Sprott-Linz H chaotic attractor //

  float x = 1.0;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.01;
  float a = 0.5;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (-ny + pow(nz, 2.0));
    y = ny + dt * (nx + a * ny);
    z = nz + dt * (nx - nz); 
  
    point(455 + (80 * x), 90 + (65 * y));
        
  }

}
