// Qi hyperchaotic attractor //

  float x = 10.0;
  float y = 15.0;
  float z = 20.0;
  float w = 22.0;
  float dt = 0.00002;
  float a = 50.0;
  float b = 24.0;
  float c = 13.0;
  float d = 8.0;
  float e = 33.0;
  float f = 30.0;


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
    
    x = nx + dt * (a * (ny - nx) + ny * nz);
    y = ny + dt * (b * (nx + ny) - nx * nz);
    z = nz + dt * (-c * nz - e * nw + nx * ny);
    w = nw + dt * (-d * nw + f * nz + nx * ny);
    
    point(320 + (0.6 * x), 240 + (0.5 * y));
        
  }

}
