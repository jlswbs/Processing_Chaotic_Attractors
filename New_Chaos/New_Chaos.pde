// New chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.005;
  float a = 2.0;
  float b = 8.0;
  float c = 2.9;
  float k = 4.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * nx - 2.0 * ny * nz);
    y = ny + dt * (- b * ny + 2.0 * nx * nz);
    z = nz + dt * (- c * nz + nx * ny * nz + k / 2.0);
  
    point(320 + (50 * x), 240 + (45 * y));
        
  }

}
