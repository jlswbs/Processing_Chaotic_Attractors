// Feigenbaum like chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.002;
  float a = -20.0;
  float b = 1.0;
  float c = 1.58;
  float d = -1.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * ny);
    y = ny + dt * (nx + pow(nz, 2.0));
    z = nz + dt * (b + c * nx + d * nz); 
  
    point(415 + (65 * x), 210 + (230 * y));
        
  }

}
