void setup(){
   background(0);
   size(1350, 1100);
}
float sourceAngle;
void draw(){
  sourceAngle = sourceAngle + 0.05;
  fill(255);
  myFractal((float)(180 * Math.cos(sourceAngle)), (float)(180 * Math.sin(sourceAngle)), (float)(180 * Math.sin(sourceAngle)), (float)(180 * Math.sin(sourceAngle)));
  fill(255);
  myFractal((float)(180 * Math.cos(sourceAngle)), -(float)(180 * Math.sin(sourceAngle)), (float)(180 * Math.sin(sourceAngle)), (float)(180 * Math.sin(sourceAngle)));
  fill(255);
  myFractal(-(float)(180 * Math.cos(sourceAngle)), (float)(180 * Math.sin(sourceAngle)),(float)(180 * Math.sin(sourceAngle)), (float)(180 * Math.sin(sourceAngle)));
  fill(255);
  myFractal(-(float)(180 * Math.cos(sourceAngle)), -(float)(180 * Math.sin(sourceAngle)),(float)(180 * Math.sin(sourceAngle)), (float)(180 * Math.sin(sourceAngle)));
  
}

void myFractal(float x, float y, float size, float angle){
  pushMatrix();
  translate(width / 2, height/ 2);
  rotate(radians(angle));
  ellipse(x, y, size, size);
  popMatrix();
  if(size > 8){
    myFractal(x + size / 2, y + size / 2, size * .65, angle + 55);
    myFractal(x - size / 2, y - size / 2, size * .65, angle - 55);
  } 
}
