// Four-wing A chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float dt = 0.0005;
  float a = 4.0;
  float b = 6.0;
  float c = 10.0;
  float d = 5.0;
  float k = 1.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (a * nx - b * ny * nz);
    y = ny + dt * (-c * ny + nx * nz);
    z = nz + dt * (k * nx - d * nz + nx * ny);
    
    point(320 + (5 * x), 240 + (10 * y));
        
  }

}
