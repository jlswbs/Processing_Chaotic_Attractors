// 3-Cells CNN chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.007;
  float p1 = 1.24;
  float p2 = 1.1;
  float r = 4.4;
  float s = 3.21;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    float h1 = 0.5 * (abs(nx + 1.0) - abs(nx - 1.0));
    float h2 = 0.5 * (abs(ny + 1.0) - abs(ny - 1.0));
    float h3 = 0.5 * (abs(nz + 1.0) - abs(nz - 1.0));
    
    x = nx + dt * (-nx + p1 * h1 - s * h2 - s * h3);
    y = ny + dt * (-ny - s * h1 + p2 * h2 - r * h3);
    z = nz + dt * (-nz - s * h1 + r * h2 + h3); 
  
    point(320 + (160 * x), 240 + (160 * y));
        
  }

}
