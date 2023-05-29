// Globo-Toroid chaotic attractor //

  float x = 0.0;
  float y = -0.0293;
  float z = 0.566;
  float dt = 0.005;
  float a = 0.144;
  float b = 0.1446;
  float c = 0.7449;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (-(2.0 * PI) * c * ny - a * nz * (nx + 1.0));
    y = ny + dt * ((2.0 * PI) * c * nx);
    z = nz + dt * (a * pow(nx + 1.0, 2.0) - b); 
  
    point(320 + (850 * x), -340 + (750 * z));
        
  }

}
