// Jha hyperchaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float w = 0.1;
  float dt = 0.0005;
  float a = 10.0;
  float b = 28.0;
  float c = 2.667;
  float d = 1.3;


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
    y = ny + dt * (-nx * nz + b * nx - ny);
    z = nz + dt * (nx * ny - c * nz);
    w = nw + dt * (-nx * nz + d * nw);
    
    point(320 + (8 * x), 240 + (7 * y));
        
  }

}
