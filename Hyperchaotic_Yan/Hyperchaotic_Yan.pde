// Yan hyperchaotic attractor //

  float x = 5.0;
  float y = 8.0;
  float z = 12.0;
  float w = 21.0;
  float dt = 0.001;
  float a = 37.0;
  float b = 3.0;
  float c = 26.0;
  float d = 38.0;


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
    y = ny + dt * ((c - a) * nx - nx * nz + c * ny);
    z = nz + dt * (-b * nz + nx * ny - ny * nz + nx * nz - nw);
    w = nw + dt * (-d * nw + ny * nz - nx * nz);
    
    point(295 + (13 * x), 215 + (9 * y));
        
  }

}
