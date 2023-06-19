// Multi-layer Chua A chaotic attractor //


  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float fx = 0.0;
  float dt = 0.005;
  float a = 1.3;
  float b = 0.11;
  float c = 2.0;
  float d = 0.0;
  float alpha = 10.814;
  float beta = 14.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    
    if ((c % 2.0) == 0.0) d = PI; else d = 0.0;
    if (nx >= (2.0 * a * c)) fx = ((b * PI) / (2.0 * a)) * (nx - 2.0 * a * c);
    if (nx <= (-2.0 * a * c)) fx = ((b * PI) / (2.0 * a)) * (nx + 2.0 * a * c);
    if (nx < (2.0 * a * c) && nx > (-2.0 * a * c)) fx = -b * sin(((PI * nx) / (2.0 * a)) + d);
    
    x = nx + dt * (alpha * (ny - fx));
    y = ny + dt * (nx - ny + nz);
    z = nz + dt * (-beta * ny);
    
    point(320 + (40 * x), 240 + (280 * y));
        
  }

}
