void setup()
{
  size(500,500);
  
  pushMatrix();
  pushStyle();
    fill(251, 0, 63);
    triangle(0,0,-12.6,16.6,12.6,16.6);
    triangle(0,16.6,-16.6,33.2,16.6,33.2);
    fill(145, 93, 86);
    rect(-5,33.2,10,16.6);
  popStyle();
  popMatrix();
  
}