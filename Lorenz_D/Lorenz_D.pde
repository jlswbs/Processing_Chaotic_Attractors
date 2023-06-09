// Lorenz D chaotic attractor //

  float x = 0.0;
  float y = 1.0;
  float z = 0.0;
  float dt = 0.005;
  float a = 0.1;
  float b = 4.0;
  float c = 14.0;
  float d = 0.08;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (-a * nx + pow(ny, 2.0) - pow(nz, 2.0) + a * c);
    y = ny + dt * (nx * (ny - b * nz) + d);
    z = nz + dt * (-nz + nx * (b * ny + nz));
  
    point(340 + (35 * x), 250 + (20 * y));
        
  }

}
