// Zhou chaotic attractor //

  float x = 3.0;
  float y = 1.0;
  float z = 15.0;
  float dt = 0.002;
  float a = 10.0;
  float b = 16.0;
  float c = -1.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * (ny - nx));
    y = ny + dt * (b * nx - nx * nz);
    z = nz + dt * (nx * ny + c * nz);
        
    point(320 + (22 * x), 240 + (14 * y));
        
  }

}
