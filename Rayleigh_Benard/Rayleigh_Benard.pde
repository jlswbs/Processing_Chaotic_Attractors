// Rayleigh-Benard chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.05;
  float a = 9.0;
  float b = 5.0;
  float r = 12.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (- a * nx + a * ny);
    y = ny + dt * (r * nx - ny - nx * nz);
    z = nz + dt * (nx * ny - b * nz); 
  
    point(320 + (20 * x), 240 + (13 * y));
        
  }

}
