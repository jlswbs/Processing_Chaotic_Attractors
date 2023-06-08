// Chua-Cubic chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.005;
  float alpha = 10.0;
  float beta = -16.0;
  float c = -0.143;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (alpha * (ny - pow(nx, 3.0) - c * nx));
    y = ny + dt * (nx - ny + nz);
    z = nz + dt * (beta * ny); 
    
    point(320 + (540 * x), 240 + (2200 * y));
        
  }

}
