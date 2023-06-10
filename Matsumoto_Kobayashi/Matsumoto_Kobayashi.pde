// Matsumoto-Chua-Kobayashi chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float w = 0.1;
  float g = 0.0;
  float dt = 0.01;
  float a1 = 2.0;
  float a2 = 2.0;
  float b = 20.0;
  float c = 1.5;
  float m0 = 3.0;
  float m1 = -0.2;


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
    
    g = m0 * (ny - nx) + 0.5 * (m1 - m0) * (abs(ny - nx + 1.0) - abs(ny - nx - 1.0));
        
    x = nx + dt * (a1 * g - a2 * nz);
    y = ny + dt * (b * (-g - nw));
    z = nz + dt * (nx + nz);
    w = nw + dt * (c * ny);
  
    point(320 + (75 * x), 240 + (67 * w));
        
  }

}
