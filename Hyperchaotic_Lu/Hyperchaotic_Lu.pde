// Lu hyperchaotic attractor //

  float x = 5.0;
  float y = 8.0;
  float z = 12.0;
  float w = 21.0;
  float dt = 0.001;
  float a = 36.0;
  float b = 3.0;
  float c = 20.0;
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
    y = ny + dt * (-nx * nz + c * ny);
    z = nz + dt * (nx * ny - b * nz);
    w = nw + dt * (d * nw + nx * nz);
    
    point(320 + (10 * x), 240 + (6 * y));
        
  }

}
