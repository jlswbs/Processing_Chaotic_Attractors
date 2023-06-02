// Wang-Sun chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 1.0;
  float dt = 0.005;
  float a = 0.2;
  float b = -0.01;
  float c = 1.0;
  float d = -0.4;
  float e = -1.0;
  float f = -1.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (nx * a + c * ny * nz);
    y = ny + dt * (b * nx + d * ny - nx * nz);
    z = nz + dt * (e * nz + f * nx * ny);
  
    point(320 + (80 * x), 240 + (60 * y));
        
  }

}
