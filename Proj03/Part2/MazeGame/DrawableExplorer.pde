/**
 * DrawableExplorer.java
 * Visual representation of an explorer in the maze.
 * In this game, Zwei from the animation RWBY.
 *
 * @author Vinh Nguyen
 * @version 4/25/2016
 */
public class DrawableExplorer extends Explorer implements Drawable 
{
  //constructor
  public DrawableExplorer(Square location, Maze maze, String name) 
  {
    super(location, maze, name);
  }

  //method : void draw()
  public void draw() 
  {
    //location().x()+
    //location().y()+
  pushMatrix();
  fill(60);
  //arc(x,y,w,h,start,stop)
  arc(location().x()+25,location().y()+15,35,63,0,PI);
  
  //left ear
  pushMatrix();
  pushStyle();
    fill(255);
    stroke(255, 242, 209);
    strokeWeight(.7);
    arc(location().x()+14,location().y()+15,13,20,-PI,0);
    stroke(60);
    strokeWeight(.8);
    arc(location().x()+14,location().y()+15,14,21,-PI,-PI/2);
  popStyle();
  popMatrix();
  
  //right ear
  pushMatrix();
  pushStyle();
    fill(255);
    stroke(255, 242, 209);
    strokeWeight(.7);
    arc(location().x()+35.5,location().y()+15,13,20,-PI,0);
    stroke(60);
    strokeWeight(.8);
    arc(location().x()+35.5,location().y()+15,14,21,-PI/2,0);
  popStyle();
  popMatrix();
  
  pushMatrix();
  pushStyle();
    fill(255, 242, 209);
    noStroke();
    triangle(location().x()+17,location().y()+17,location().x()+14,location().y()+19,location().x()+20,location().y()+18);
    triangle(location().x()+33,location().y()+17,location().x()+36,location().y()+19,location().x()+30,location().y()+18);
  popStyle();
  popMatrix();
  
  //left and right eyelid
  pushMatrix();
    fill(0);
    arc(location().x()+17,location().y()+25,9.0,9.5,-PI,0);
    arc(location().x()+33,location().y()+25,9.0,9.5,-PI,0);    
  popMatrix();
  
  //left eye
  fill(255, 242, 209);
  ellipse(location().x()+17,location().y()+23,4.5,4.5);
  fill(0);
  ellipse(location().x()+17,location().y()+23,3,3);
  fill(255);
  ellipse(location().x()+18.5,location().y()+21.7,1.4,1.4);
  ellipse(location().x()+15.7,location().y()+23.9,1,1);
  
  //right eye
  fill(255, 242, 209);
  ellipse(location().x()+33,location().y()+23,4.5,4.5);
  fill(0);
  ellipse(location().x()+33,location().y()+23,3,3);
  fill(255);
  ellipse(location().x()+34.5,location().y()+21.7,1.4,1.4);
  ellipse(location().x()+31.3,location().y()+23.9,1,1);
  
  //white fur
  pushStyle();
  noStroke();
  fill(255);
  triangle(location().x()+10,location().y()+28,location().x()+40,location().y()+28,location().x()+25,location().y()+46);
  triangle(location().x()+11,location().y()+31,location().x()+39,location().y()+31,location().x()+25,location().y()+46);
  triangle(location().x()+12,location().y()+33,location().x()+38,location().y()+33,location().x()+25,location().y()+46);
  arc(location().x()+25,location().y()+28,25,33,0,PI);
  //tan fur
  fill(255, 242, 209);
  triangle(location().x()+24,location().y()+26,location().x()+22.5,location().y()+37.8,location().x()+12.5,location().y()+27.7);
  triangle(location().x()+26,location().y()+26,location().x()+27.5,location().y()+37.8,location().x()+37.5,location().y()+27.7);
  popStyle();
  
  //nose
  fill(0);
  arc(location().x()+25,location().y()+32.5,5,1,-PI,0);
  rect(location().x()+22.5,location().y()+32.5,5,2.5);
  arc(location().x()+25,location().y()+35,5,4,0,PI);
  
  //smile
  beginShape();
    vertex(location().x()+18,location().y()+37);
    vertex(location().x()+21,location().y()+43);
    vertex(location().x()+25,location().y()+45);
    vertex(location().x()+29,location().y()+43);
    vertex(location().x()+32,location().y()+37);
    vertex(location().x()+28,location().y()+40);
    vertex(location().x()+22,location().y()+40);
  endShape();
  
  //tongue
  fill(243, 93, 131);
  triangle(location().x()+19,location().y()+38,location().x()+25,location().y()+40,location().x()+19,location().y()+43);
  
  

  
  popMatrix();
  }

  //end
}