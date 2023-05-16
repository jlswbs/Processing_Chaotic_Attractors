// Three scroll chaotic attractor //

  float x = 0.2;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.005;
  float l = 1.8;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * ny;
    y = ny + dt * (- (nx + (0.5 * pow(nz, 4.0) - 2.4) * ny) / l);
    z = nz + dt * (- ny - ((3.0/4.0) - pow(ny, 2.0)) * nz);
  
    point(320 + (85 * y), 240 + (65 * z));
        
  }

}
