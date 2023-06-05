// Sprott-Linz A chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.01;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (ny);
    y = ny + dt * (-nx + ny * nz);
    z = nz + dt * (1.0 - pow(ny, 2.0)); 
  
    point(540 + (160 * x), 240 + (80 * y));
        
  }

}
