// Rikitake chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.005;
  float a = 5.0;
  float b = 2.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (- b * nx + nz * ny);
    y = ny + dt * (- b * ny + (nz - a) * nx);
    z = nz + dt * (1.0 - nx * ny);
  
    point(320 + (37 * x), 240 + (47 * y));
        
  }

}
