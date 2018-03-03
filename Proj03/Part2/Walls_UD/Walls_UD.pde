void setup()
{
  size(500,500);
  
  pushMatrix();
  pushStyle();
    fill(86, 42, 0);
    triangle(8.5,1.5,4.5,6.5,12.5,6.5);
    triangle(25.1,1.5,21.1,6.5,29.1,6.5);
    triangle(41.7,1.5,37.7,6.5,45.7,6.5);
    fill(208, 0, 52);
    arc(8.5,2.5,16.6,5.0,-PI,0);
    arc(25.1,2.5,16.6,5.0,-PI,0);
    arc(41.7,2.5,16.6,5.0,-PI,0);
  popStyle();
  popMatrix();
}