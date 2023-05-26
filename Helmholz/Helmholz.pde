// Helmholz chaotic attractor //

  float x = 0.01;
  float y = 0.01;
  float z = 0.01;
  float dt = 0.005;
  float g = 5.11;
  float d = 0.55;


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
    y = ny + dt * (g * nz);
    z = nz + dt * (-nz - d * ny - nx - pow(nx, 2.0));
  
    point(370 + (230 * y), 260 + (500 * z));
        
  }

}
