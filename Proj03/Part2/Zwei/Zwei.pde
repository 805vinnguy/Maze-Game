void setup()
{
  pushMatrix();
  size(50,50);
  fill(60);
  //arc(x,y,w,h,start,stop)
  arc(25,15,35,63,0,PI);
  
  //left ear
  pushMatrix();
  pushStyle();
    fill(255);
    stroke(255, 242, 209);
    strokeWeight(.7);
    arc(14,15,13,20,-PI,0);
    stroke(60);
    strokeWeight(.8);
    arc(14,15,14,21,-PI,-PI/2);
  popStyle();
  popMatrix();
  
  //right ear
  pushMatrix();
  pushStyle();
    fill(255);
    stroke(255, 242, 209);
    strokeWeight(.7);
    arc(35.5,15,13,20,-PI,0);
    stroke(60);
    strokeWeight(.8);
    arc(35.5,15,14,21,-PI/2,0);
  popStyle();
  popMatrix();
  
  pushMatrix();
  pushStyle();
    fill(255, 242, 209);
    noStroke();
    triangle(17,17,14,19,20,18);
    triangle(33,17,36,19,30,18);
  popStyle();
  popMatrix();
  
  //left and right eyelid
  pushMatrix();
    fill(0);
    arc(17,25,9.0,9.5,-PI,0);
    arc(33,25,9.0,9.5,-PI,0);    
  popMatrix();
  
  //left eye
  fill(255, 242, 209);
  ellipse(17,23,4.5,4.5);
  fill(0);
  ellipse(17,23,3,3);
  fill(255);
  ellipse(18.5,21.7,1.4,1.4);
  ellipse(15.7,23.9,1,1);
  
  //right eye
  fill(255, 242, 209);
  ellipse(33,23,4.5,4.5);
  fill(0);
  ellipse(33,23,3,3);
  fill(255);
  ellipse(34.5,21.7,1.4,1.4);
  ellipse(31.3,23.9,1,1);
  
  //white fur
  pushStyle();
  noStroke();
  fill(255);
  triangle(10,28,40,28,25,46);
  triangle(11,31,39,31,25,46);
  triangle(12,33,38,33,25,46);
  arc(25,28,25,33,0,PI);
  //tan fur
  fill(255, 242, 209);
  triangle(24,26,22.5,37.8,12.5,27.7);
  triangle(26,26,27.5,37.8,37.5,27.7);
  popStyle();
  
  //nose
  fill(0);
  arc(25,32.5,5,1,-PI,0);
  rect(22.5,32.5,5,2.5);
  arc(25,35,5,4,0,PI);
  
  //smile
  beginShape();
    vertex(18,37);
    vertex(21,43);
    vertex(25,45);
    vertex(29,43);
    vertex(32,37);
    vertex(28,40);
    vertex(22,40);
  endShape();
  
  //tongue
  fill(243, 93, 131);
  triangle(19,38,25,40,19,43);
  
  

  
  popMatrix();
}