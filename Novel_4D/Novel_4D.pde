// Novel 4D chaotic attractor //

  float x = 2.0;
  float y = 1.0;
  float z = 1.0;
  float w = 2.0;
  float dt = 0.0002;
  float a = 10.0;
  float b = 12.0;
  float c = 50.0;
  float d = 2.0;
  float e = 4.0;
  

void setup() {
  
  size(640,480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    float nw = w;
    
    x = nx + dt * (ny * nz - a * nx);
    y = ny + dt * (b * ny - nx * nz);
    z = nz + dt * (nx * ny - c * nz + d * nw);
    w = nw + dt * (nx * nz - e * nw);
    
    point(320 + (1.3 * x), 240 + y);
        
  }

}
