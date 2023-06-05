// Rossler chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.005;
  float a = 0.2;
  float b = 0.2;
  float c = 14.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (-ny - nz);
    y = ny + dt * (nx + a * ny);
    z = nz + dt * (b + nz * (nx - c));      
  
    point(300 + (11 * x), 270 + (9 * y));
        
  }

}
