// Lorenz Yu-Wang A hyperbolic chaotic attractor //

  float x = 3.0;
  float y = 2.0;
  float z = 2.0;
  float dt = 0.001;
  float a = 10.0;
  float b = 30.0;
  float c = 2.0;
  float d = 2.5;


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
    y = ny + dt * ((b * nx) - (c * nx * nz));
    z = nz + dt * ((float)Math.sinh(nx * ny) - (d * nz));
    
    point(320 + (75 * y), -70 + (16 * z));
        
  }

}
