// Chaotic system with infinite number of equilibrium points //

  float x = 0.0;
  float y = 0.1;
  float z = 0.2;
  float dt = 0.005;
  float a = 2.9;


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
    y = ny + dt * (nx * pow(nz, 2.0));
    z = nz + dt * (nx - ny * (float)Math.tanh(ny) + nz * (a * pow(ny, 2.0) - pow(nz, 2.0)));
  
    point(330 + (270 * x), 220 + (230 * z));

  }

}
