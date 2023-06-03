// Moore-Spiegel chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.001;
  float a = 100.0;
  float b = 26.0;



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
    z = nz + dt * (-nz - (b - a + a * pow(nx, 2.0)) * ny - b * nx);
  
    point(320 + (105 * x), 240 + (14 * y));
        
  }

}
