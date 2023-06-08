// Mathieu van der Pol chaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 1.0;
  float w = 1.0;
  float dt = 0.0003;
  float a = 91.1;
  float b = 5.023;
  float c = -0.001;
  float d = 91.0;
  float e = 87.001;
  float f = 0.1411;
  float g = 9.507;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    float nw = w;
    
    x = nx + dt * (ny);
    y = ny + dt * (-(a + b * nz) * nx - (a + b * nz) * pow(nx, 3.0) - c * ny + d * nz);
    z = nz + dt * (nw);
    w = nw + dt * (-e * nz + f * (1.0 - pow(nz, 2.0)) * nw + g * nx);
  
    point(320 + (140 * x), 230 + (8 * y));
        
  }

}
