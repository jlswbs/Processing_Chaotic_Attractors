// Sprott-Linz Q chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.008;
  float a = 3.4;
  float b = 0.5;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (-nz);
    y = ny + dt * (nx - ny);
    z = nz + dt * (a * nx + pow(ny, 2.0) + b * nz); 
  
    point(400 + (46 * x), 320 + (65 * y));
        
  }

}
