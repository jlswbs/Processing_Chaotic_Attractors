// Hadley chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.005;
  float a = 0.2;
  float b = 4.0;
  float f = 8.0;
  float g = 1.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (- pow(ny, 2.0) - pow(nz, 2.0) - a * nx + a * f);
    y = ny + dt * (nx * ny - b * nx * nz - ny + g);
    z = nz + dt * (b * nx * ny + nx * nz - nz); 
  
    point(200 + (160 * x), 220 + (95 * y));
        
  }

}
