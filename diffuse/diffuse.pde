

PShader toon;

float x = 0;
float y = 0;
float render_no = 0;

void setup() {
  size(600, 600, P3D);
  noStroke();
  fill(204);
  toon = loadShader("fragment.glsl", "vertex.glsl");
  toon.set("fraction", 1.0);
}

void draw() {
  toon.set("render_no", render_no);
  render_no += 0.01;

  shader(toon);
  background(0);
  float dirY = sin( y ) * 2.0;
  float dirX = cos( x );
  x += 0.05;
  y += 0.01;
  directionalLight(204, 204, 204, -dirX, -dirY, -1);
  translate( width/ 2 , height/ 2 );
  sphere( 120 );
  delay( 24 );
}
