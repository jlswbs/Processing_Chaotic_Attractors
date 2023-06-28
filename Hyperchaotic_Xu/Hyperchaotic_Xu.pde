// Xu hyperchaotic attractor //

  float x = 2.0;
  float y = -1.0;
  float z = -2.0;
  float w = -10.0;
  float dt = 0.001;
  float a = 10.0;
  float b = 40.0;
  float c = 2.5;
  float d = 2.0;
  float e = 16.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    float nw = w;
    
    x = nx + dt * (a * (ny - nx) + nw);
    y = ny + dt * (b * nx + e * nx * nz);
    z = nz + dt * (-c * nz - nx * ny);
    w = nw + dt * (nx * nz - d * ny);
    
    point(320 + (40 * x), 240 + (21 * y));
        
  }

}
