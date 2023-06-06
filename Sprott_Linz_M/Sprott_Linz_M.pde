// Sprott-Linz M chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.005;
  float a = 1.7;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (-nz);
    y = ny + dt * (-pow(nx, 2.0) - ny);
    z = nz + dt * (a + a * nx + ny); 
    
    point(290 + (110 * x), 435 + (80 * y));
        
  }

}
