void setup()
{
  size(500,500);
  
  pushMatrix();
  fill(0);
  rect(0,0,500,500);
  fill(215);
  arc(250,250,300,300,-PI,0);
  arc(250,250,300,100,0,PI);
  
  //nose
  fill(0);
  triangle(220,260,250,250,280,260);
  
  //headmark
  pushMatrix();
  pushStyle();
    noStroke();
    fill(255,0,0);
    triangle(245,155,250,100,255,155);
    ellipse(250,150,45,40);
    fill(215);
    ellipse(250,150,30,25);
    fill(255,0,0);
    ellipse(250,150,20,15);
    
    //facemark
    stroke(255,0,0);
    strokeWeight(6);
    line(230,160,180,180);
    line(180,180,170,240);
    line(170,240,120,180);
    
    strokeWeight(4);
    line(270,160,320,180);
    line(320,180,330,240);
  popStyle();
  popMatrix();
  
  //eyes
  pushMatrix();
  pushStyle();
    fill(255, 31, 0);
    quad(190,250,180,260,150,255,140,230);
    quad(310,250,320,260,350,255,360,230);
  popStyle();
  pushStyle();
  
  //mouth
  pushMatrix();
    fill(49, 0, 49);
    arc(250,300,200,150,-PI/30,PI+PI/30);
    fill(215);
    triangle(200,300,225,300,212,340);
    triangle(300,300,275,300,288,340);
    triangle(200,360,225,370,200,330);
    triangle(300,360,275,370,300,330);
  popMatrix();
  
  //back
  pushMatrix();
    fill(215);
    triangle(0,0,70,100,40,130);
    triangle(150,-50,170,100,120,150);
    triangle(270,70,300,-100,340,100);
    triangle(360,120,500,50,430,200);
  popMatrix();
  
  //claws
  pushMatrix();
    fill(215);
    triangle(0,475,30,475,15,500);
    triangle(30,475,60,475,45,500);
    triangle(60,475,90,475,75,500);
    triangle(90,475,120,475,105,500);
    
    triangle(410,475,380,475,395,500);
    triangle(440,475,410,475,425,500);
    triangle(470,475,440,475,455,500);
    triangle(500,475,470,475,485,500);
  popMatrix();
  
  popMatrix();
  
  
}