// Wimol-Banlue chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.005;
  float a = 2.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (ny - nx);
    y = ny + dt * (- nz * (float)Math.tanh(nx));
    z = nz + dt * (- a + (nx * ny) + abs(ny));
  
    point(320 + (75 * x), 240 + (30 * y));
        
  }

}
