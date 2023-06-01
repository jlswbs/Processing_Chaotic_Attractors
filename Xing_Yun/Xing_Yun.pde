// Xing-Yun chaotic attractor //

  float x = 3.0;
  float y = 3.0;
  float z = 0.1;
  float dt = 0.0001;
  float a = 50.0;
  float b = 10.0;
  float c = 13.0;
  float d = 6.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * (ny - nx) + ny * pow(nz, 2.0));
    y = ny + dt * (b * (nx + ny) - nx * pow(nz, 2.0));
    z = nz + dt * (-c * nz + d * ny + nx * ny * nz);
  
    point(320 + (11 * x), 240 + (9 * y));
        
  }

}
