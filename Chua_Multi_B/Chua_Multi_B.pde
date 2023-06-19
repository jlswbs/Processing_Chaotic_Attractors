// Multi-layer Chua B chaotic attractor //

  float x = 0.1;
  float y = -0.2;
  float z = 0.3;
  float fx = 0.0;
  float dt = 0.003;
  float c[] = new float[6];
  float m[] = new float[6];
  float alpha = 9.0;
  float beta = 14.286;


void setup() {
  
  size(640, 480);
  background(255);
  
  m[0] = -0.14285714285;
  m[1] = 0.28571428571; 
  m[2] = -0.57142857142;
  m[3] = 0.28571428571;
  m[4] = -0.57142857142;
  m[5] = 0.28571428571;

  c[0] = 0.0;
  c[1] = 1.0;
  c[2] = 2.15;
  c[3] = 3.6;
  c[4] = 8.2;
  c[5] = 13.0;
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z; 
    float sum = 0;
        
    for (int k = 1; k < 6; k++) sum = sum + ((m[k - 1] - m[k]) * (abs(nx + c[k]) - abs(nx - c[k])));
        
    fx = m[5] * nx + 0.5 * sum;
        
    x = nx + dt * (alpha * (ny - fx));
    y = ny + dt * (nx - ny + nz);
    z = nz + dt * (-beta * ny);
    
    point(320 + (9 * x), 240 + (40 * y));
        
  }

}
