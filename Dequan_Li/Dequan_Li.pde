// Dequan-Li chaotic attractor //

  float x = 0.349;
  float y = 0.0;
  float z = -0.16;
  float dt = 0.0002;
  float a = 40.0;
  float c = 1.833;
  float d = 0.16;
  float e = 0.65;
  float k = 55.0;
  float f = 20.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * (ny - nx) + d * nx * nz);
    y = ny + dt * (k * nx + f * ny - nx * nz);
    z = nz + dt * (c * nz + nx * ny - e * pow(nx, 2.0)); 
  
    point(320 + (2 * x), 240 + y);
        
  }

}
