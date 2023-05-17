// Liu chaotic attractor //

  float x = 0.1;
  float y = 0.0;
  float z = 0.1;
  float dt = 0.005;
  float a = 2.5;
  float b = 5.0;
  float c = 4.0;

void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (-nx - pow(ny, 2.0));
    y = ny + dt * (a * ny -c * nx * nz);
    z = nz + dt * (-b * nz + c * nx * ny); 
  
    point(320 + (140 * z), 240 + (80 * y));
        
  }

}
