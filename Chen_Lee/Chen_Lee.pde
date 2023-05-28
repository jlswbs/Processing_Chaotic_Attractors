// Chen-Lee chaotic attractor //

  float x = 1.0;
  float y = 0.0;
  float z = 4.5;
  float dt = 0.004;
  float a = 5.0;
  float b = -10.0;
  float c = -0.38;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * nx - ny * nz);
    y = ny + dt * (b * ny + nx * nz);
    z = nz + dt * (c * nz + nx * ny / 3.0); 
  
    point(320 + (11 * x), 240 + (9 * y));
        
  }

}
