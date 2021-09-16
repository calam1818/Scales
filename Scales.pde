void setup() {
  size(680, 500);  //feel free to change the size
  background(0,0,80);
 noLoop();//stops the draw() function from repeating
}
void draw() {
  for(int y=0; y<800;y=y+50){
  for(int x=0; x<800; x=x+50){
scale(x-1,y-1);
scale(x+1,y+1);

  }
  }
}
void scale(int x, int y) {
fill(255,255,102);
  translate(width*.001, height*.0001);
  rotate(frameCount / 200.0);
  star(x, y, 5,7,10); 
  star(x-40, y-40, 20,30,10);


}






void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
