PShape gundam;
void setup(){
  size(600,600,P3D);
  gundam=loadShape("Gundam.obj");
}
void draw(){
  background(#16D7F7);
  translate(250,555);
  scale(20,-20,20);
  rotateY(radians(frameCount));
  shape(gundam);
}
