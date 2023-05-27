// Burke-Shaw chaotic attractor //

  float x = 1.0;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.005;
  float s = 10.0;
  float v = 4.272;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (-s * (nx + ny));
    y = ny + dt * (-ny - s * nx * nz);
    z = nz + dt * (s * nx * ny + v); 
  
    point(320 + (170 * x), 240 + (100 * y));
        
  }

}
