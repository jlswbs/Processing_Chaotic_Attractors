// Four-wing B chaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 1.0;
  float dt = 0.0003;
  float a = -14.0;
  float b = 5.0;
  float c = 1.0;
  float d = 16.0;
  float e = -43.0;
  float f = 1.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    x = nx + dt * (a * nx + b * ny + c * ny * nz);
    y = ny + dt * (d * ny - nx * nz);
    z = nz + dt * (e * nz + f * nx * ny);
    
    point(320 + (1.1 * x), 240 + (0.9 * y));
        
  }

}
