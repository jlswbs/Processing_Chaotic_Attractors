// Plat chaotic attractor //

  float x = 1.0;
  float y = 2.0;
  float z = 3.0;
  float dt = 0.05;
  float a = 0.07;
  float b = 0.033;
  float c = 0.11;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (-a * nx + b * cos(ny) - cos(nz));
    y = ny + dt * (-b * ny + c * cos(nz) - cos(nx));
    z = nz + dt * (-c * nz + a * cos(nx) - cos(ny)); 
  
    point(320 + (30 * x), 240 + (13 * y));
        
  }

}
