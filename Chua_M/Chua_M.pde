// Chua-M chaotic attractor //

  float x = 0.1;
  float y = 0.1;
  float z = 0.1;
  float w = 0.1;
  float h = 0.0;
  float dt = 0.002;
  float alpha = 10.0;
  float beta = 13.0;
  float gamma = 0.2;
  float epsilon = 1.5;
  float a = 0.3;
  float b = 0.8;
  

void setup() {
  
  size(640,480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
    float nw = w;
        
    if (abs(nw) < 1.0) h = a;
    if (abs(nw) > 1.0) h = b;
        
    x = nx + dt * (alpha * (ny - nx + epsilon * nx - h * nx));
    y = ny + dt * (nx - ny + nz);
    z = nz + dt * (-beta * ny - gamma * nz);
    w = nw + dt * (nx);
  
    point(320 + (88 * w), 240 + (22 * z));
        
  }

}
