// Lorenz A chaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 1.0;
  float dt = 0.005;
  float h = 0.0;
  float a = 10.0;
  float b = 28.0;
  float c = 6.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    h = sqrt(pow(x, 2.0) + pow(y, 2.0));
    
    x = nx + dt * ((-a - 1.0) * nx + (a - b) * ny + (1.0 - a) * h + ny * nz);
    y = ny + dt * ((b - a) * nx - (a + 1.0) * ny + (b + a) * h - nx * nz - h * nz);
    z = nz + dt * (ny / 2.0 - c * nz);
  
    point(385 + (x / 1.7), 70 + (y / 3.2));
        
  }

}
