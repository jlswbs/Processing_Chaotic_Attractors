// Shimizu-Morioka chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.01;
  float a = 0.75;
  float b = 0.45;


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
    y = ny + dt * ((1.0 - nz) * nx - a * ny);
    z = nz + dt * (pow(nx, 2.0) - b * nz); 
  
    point(320 + (190 * x), 240 + (190 * y));
        
  }

}
