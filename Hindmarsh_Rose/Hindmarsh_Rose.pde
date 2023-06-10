// Hindmarsh–Rose chaotic attractor //

  float x = 1.0;
  float y = 0.0;
  float z = 0.0;
  float dt = 0.005;
  float a = 0.49;
  float b = 1.0;
  float c = 0.0322;
  float d = 1.0;
  float s = 1.0;
  float u = 0.03;
  float v = 0.8;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * ((-u * nx + ny - a * pow(nx, 3.0) + b * pow(nx, 2.0) + nz) / u);
    y = ny + dt * (-a * pow(nx, 3.0) - (d - b) * pow(nx, 2.0) + nz);
    z = nz + dt * ((-s * nx - nz + c) / v); 
  
    point(220 + (200 * x), 430 + (720 * y));
        
  }

}
