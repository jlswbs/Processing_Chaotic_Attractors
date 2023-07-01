// Three-scroll A unified chaotic system //

  float x = 0.1;
  float y = 1.0;
  float z = -0.1;
  float dt = 0.001;
  float a = 40.0;
  float c = 0.833;
  float d = 0.5;
  float e = 0.65;
  float f = 20.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (a * (ny - x) + d * nx * nz);
    y = ny + dt * (f * ny - nx * nz);
    z = nz + dt * (c * nz + nx * ny - e * pow(nx, 2.0)); 
    
    point(320 + (4 * x), 240 + (3 * y));
        
  }

}
