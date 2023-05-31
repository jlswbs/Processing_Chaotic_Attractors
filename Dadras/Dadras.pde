// Dadras chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.005;
  float p = 3.0;
  float q = 2.7;
  float r = 1.7;
  float s = 2.0;
  float e = 9.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (ny - p * nx + q * ny * nz);
    y = ny + dt * (r * ny - nx * nz + nz);
    z = nz + dt * (s * nx * ny - e * z); 
  
    point(320 + (11 * x), 240 + (14 * y));
        
  }

}
