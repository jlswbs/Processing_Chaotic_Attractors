// Qi chaotic attractor //

  float x = 1.0;
  float y = 0.5;
  float z = 7.0;
  float w = 5.0;
  float dt = 0.001;
  float a = 30.0;
  float b = 10.0;
  float c = 1.0;
  float d = 10.0;


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
        
    x = nx + dt * (a * (ny - nx) + ny * nz * nw);
    y = ny + dt * (b * (nx + ny) - nx * nz * nw);
    z = nz + dt * (- c * nz + nx * ny * nw);
    w = nw + dt * (- d * nw + nx * ny * nz);
  
    point(320 + (38 * x), 240 + (38 * y));
        
  }

}
