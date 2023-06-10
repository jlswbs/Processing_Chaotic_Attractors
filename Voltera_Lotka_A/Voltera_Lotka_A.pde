// Voltera-Lotka A chaotic attractor //

  float x = 1.5;
  float y = 1.0;
  float z = 0.5;
  float dt = 0.005;
  float a = 2.9851;
  float b = 3.0;
  float c = 2.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0;i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (nx - nx * ny + c * pow(nx, 2.0) - a * nz * pow(nx, 2.0));
    y = ny + dt * (-ny + nx * ny);
    z = nz + dt * (-b * nz + a * nz * pow(nx, 2.0));
  
    point(-300 + (560 * x), -390 + (650 * y));
        
  }

}
