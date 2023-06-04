// Lorenz chaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 1.0;
  float dt = 0.005;
  float a = 10.0;
  float b = 28.0;
  float c = 8.0 / 3.0;


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
    y = ny + dt * (nx * (b - nz) - ny);
    z = nz + dt * (nx * ny - c * nz);
  
    point(320 + (13 * x), 440 + (8 * -z));
        
  }

}
