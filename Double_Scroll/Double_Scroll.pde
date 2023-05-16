// Double scroll chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.005;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
  
    x = nx + dt * (ny * nz);
    y = ny + dt * (1.0 - pow(nz, 2.0));
    z = nz + dt * (nx + ny * nz);
  
    point(320 + (90 * x), 280 + (55 * y));
        
  }

}
