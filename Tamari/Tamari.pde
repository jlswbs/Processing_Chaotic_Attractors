// Tamari chaotic attractor //

  float x = 1.0;
  float y = 1.0;
  float z = 1.0;
  float dt = 0.01;
  float a = 1.013;
  float b = -0.011;
  float c = 0.02;
  float d = 0.96;
  float e = 0.0;
  float f = 0.01;
  float g = 1.0;
  float h = 0.05;
  float u = 0.05;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<100; i++) {
    
    float nx = x;
    float ny = y;
    float nz = z;
        
    x = nx + dt * ((nx - a * ny) * cos(nz) - b * ny * sin(nz));
    y = ny + dt * ((nx + c * ny) * sin(nz) + d * ny * cos(nz));
    z = nz + dt * (e + f * nz + g * tan((1.0 - u) * ny / (1.0 - h) * nx)); 
  
    point(320 + (250 * x), 240 + (140 * y));
        
  }

}
