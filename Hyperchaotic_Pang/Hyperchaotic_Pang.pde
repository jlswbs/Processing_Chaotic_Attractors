// Pang hyperchaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 10.0;
  float w = 1.0;
  float dt = 0.002;
  float a = 36.0;
  float b = 3.0;
  float c = 20.0;
  float d = 2.0;


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
    
    x = nx + dt * (a * (ny - nx));
    y = ny + dt * (-nx * nz + c * ny + nw);
    z = nz + dt * (nx * ny - b * nz);
    w = nw + dt * (-d * (nx + ny));
  
    point(320 + (11 * x), 240 + (7 * y));
        
  }

}
