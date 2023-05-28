// Chen-Celikovsky chaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 1.0;
  float dt = 0.002;
  float a = 36.0;
  float b = 3.0;
  float c = 20.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * (ny - nx));
    y = ny + dt * (-nx * nz + c * ny);
    z = nz + dt * (nx * ny - b * nz); 
  
    point(320 + (11 * x), 30 + (9 * z));
        
  }

}
