// Arneodo chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.005;
  float a = -5.5;
  float b = 3.5;
  float c = -1.0;


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
    y = ny + dt * (nz);
    z = nz + dt * (-a * nx - b * ny - nz + c * pow(nx, 3.0)); 
  
    point(320 + (75 * x), 240 + (32 * y));
        
  }

}
