void setup()
{
  size(500,500);
  
  pushMatrix();
  pushStyle();
    stroke(255);
    fill(110, 110, 194);
    triangle(25.0,0,17.5,16.6,32.5,16.6);
    fill(81, 81, 177);
    triangle(25.0,0,32.5,16.6,40.0,16.6);
    noStroke();
    fill(61, 61, 177);
    triangle(25.0,0,17.5,16.6,10.0,16.6);
    stroke(0);
    fill(23, 23, 161);
    triangle(17.5,16.6,32.5,16.6,25.0,50.0);
    fill(14, 14, 125);
    triangle(17.5,16.6,25.0,50.0,10.0,16.6);
    fill(6, 6, 88);
    triangle(32.5,16.6,25.0,50.0,40.0,16.6);
  popStyle();
  popMatrix();
}