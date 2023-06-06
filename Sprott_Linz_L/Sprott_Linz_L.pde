// Sprott-Linz L chaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 0.0;
  float dt = 0.005;
  float a = 3.9;
  float b = 0.9;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (ny + a * nz);
    y = ny + dt * (b * pow(nx, 2.0) - ny);
    z = nz + dt * (1.0 - nx); 
    
    point(350 + (32 * x), 15 + (11 * y));
        
  }

}
