// Piecewise chaotic attractor //

  float x = 0.0;
  float y = 1.0;
  float z = 0.0;
  float dt = 0.005;
  float a = 4.0;
  float h = 0.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}
 

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    if (y >= 1.0) h = a; else h = 0.0;
        
    x = nx + dt * (ny);
    y = ny + dt * (nz);
    z = nz + dt * (-nz - ny * h - nx);
  
    point(440 + (85 * x), 250 + (85 * y));

  }

}
