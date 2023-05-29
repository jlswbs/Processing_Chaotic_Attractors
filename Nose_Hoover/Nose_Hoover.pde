// Nose-Hoover chaotic attractor //

  float x = 1.0;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.005;
  float a = 1.5;


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
    y = ny + dt * (- nx + ny * nz);
    z = nz + dt * (a - pow(ny, 2.0)); 
  
    point(320 + (55 * x), 240 + (45 * y));
        
  }

}
