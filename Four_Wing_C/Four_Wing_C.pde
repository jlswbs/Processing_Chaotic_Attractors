// Four-wing C chaotic attractor //

  float x = 1.0;
  float y = -1.0;
  float z = 1.0;
  float dt = 0.0007;
  float a = 1.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (nx + ny + ny * nz);
    y = ny + dt * (ny * nz - nx * nz);
    z = nz + dt * (-nz - a * nx * ny + 1.0);
    
    point(320 + (25 * x), 240 + (9 * y));
        
  }

}
