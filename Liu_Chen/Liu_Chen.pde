// Liu-Chen chaotic attractor //

  float x = 1.0;
  float y = 3.0;
  float z = 5.0;
  float dt = 0.001;
  float a = 2.4;
  float b = -3.78;
  float c = 14.0;
  float d = -11.0;
  float e = 4.0;
  float f = 5.58;
  float g = -1.0;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * (a * ny + b * nx + c * ny * nz);
    y = ny + dt * (d * ny - nz + e * nx * nz);
    z = nz + dt * (f * nz + g * nx * ny); 
  
    point(320 + (10 * x), 240 + (16 * y));
        
  }

}
