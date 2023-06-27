// Lorenz hyperchaotic attractor //

  float x = 5.0;
  float y = 8.0;
  float z = 12.0;
  float w = 21.0;
  float dt = 0.001;
  float a = 10.0;
  float b = 2.667;
  float c = 28.0;
  float d = 1.1;


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
    y = ny + dt * (-nx * nz + c * nx - ny);
    z = nz + dt * (-b * nz + nx * ny);
    w = nw + dt * (d * nw - nx * nz);
    
    point(320 + (9 * x), 240 + (7 * y));
        
  }

}
