// Lorenz-Stenflo chaotic attractor //

  float x = -1.0;
  float y = 1.0;
  float z = -1.0;
  float w = 0.0;
  float dt = 0.01;
  float a = 2.0;
  float b = 0.7;
  float c = 26.0;
  float d = 1.5;


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
    
    x = nx + dt * (a * (ny - nx) + d * nw);
    y = ny + dt * (nx * (c - nz) - ny);
    z = nz + dt * (nx * ny - b * nz);
    w = nw + dt * (-nx - a * nw);
    
    point(320 + (24 * x), 240 + (9 * y));
        
  }

}
