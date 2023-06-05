// Sprott-Linz E chaotic attractor //

  float x = 1.0;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.01;
  float a = 4.0;


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
    y = ny + dt * (pow(nx, 2.0) - ny);
    z = nz + dt * (1.0 - a * nx); 
  
    point(260 + (170 * x), 40 + (210 * y));
        
  }

}
