// Thomas chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.05;
  float b = 0.19;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (- b * nx + sin(ny));
    y = ny + dt * (- b * ny + sin(nz));
    z = nz + dt * (- b * nz + sin(nx)); 
  
    point(320 + (65 * x), 240 + (50 * y));
        
  }

}
