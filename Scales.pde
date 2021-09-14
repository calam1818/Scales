void setup() {
  size(500, 500);  //feel free to change the size
 noLoop();//stops the draw() function from repeating
}
void draw() {
  for(int y=0; y<1500;y=y+300){
  for(int x=0; x<1500; x=x+300){
  scale(x,y);
  }
  }
}
void scale(int x, int y) {
noFill();
 if(Math.random() <.5){
stroke(0, 0, 0);
bezier(340, 80, 40, 40, 360, 360, 60, 320);
}
else{
  stroke(0, 0, 0);
  bezier(x+30, y+30, x-40, y-40, 360, 360, 60, 320);
}
}

