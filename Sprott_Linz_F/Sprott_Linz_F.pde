// Sprott-Linz F chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.01;
  float a = 0.5;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (ny + nz);
    y = ny + dt * (-nx + a * ny);
    z = nz + dt * (pow(nx, 2.0) - nz); 
  
    point(420 + (125 * x), 380 + (80 * y));
        
  }

}
