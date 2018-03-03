/**
 * DrawableMonster.java
 * Visual representation of a monster in the maze.
 *
 * @author Vinh Nguyen
 * @version 4/25/2016
 */
public class DrawableMonster extends Monster implements Drawable 
{
  //constructor(3)
  public DrawableMonster(Maze maze) 
  {
    super(maze);
  }

  public DrawableMonster(Maze maze, long seed) 
  {
    super(maze, seed);
  }

  public DrawableMonster(Maze maze, Square location) 
  {
    super(maze, location);
  }

  //method : void draw()
  public void draw() 
  {
    pushMatrix();
      if (location().inView())
      {
        //location().x()+
        //location().y()+
          //pushMatrix();
  fill(0);
  rect(location().x()+0,location().y()+0,50,50);
  fill(215);
  arc(location().x()+25,location().y()+25,30,30,-PI,0);
  arc(location().x()+25,location().y()+25,30,10,0,PI);
  
  //nose
  fill(0);
  triangle(location().x()+22,location().y()+26,location().x()+25,location().y()+25,location().x()+28,location().y()+26);
  
  //headmark
  pushMatrix();
  pushStyle();
    noStroke();
    fill(255,0,0);
    triangle(location().x()+24.5,location().y()+15.5,location().x()+25,location().y()+10,location().x()+25.5,location().y()+15.5);
    ellipse(location().x()+25,location().y()+15,4.5,4.0);
    fill(215);
    ellipse(location().x()+25,location().y()+15,3,2.5);
    fill(255,0,0);
    ellipse(location().x()+25,location().y()+15,2,1.5);
    
    //facemark
    stroke(255,0,0);
    strokeWeight(.6);
    line(location().x()+23,location().y()+16,location().x()+18,location().y()+18);
    line(location().x()+18,location().y()+18,location().x()+17,location().y()+24);
    line(location().x()+17,location().y()+24,location().x()+12,location().y()+18);
    
    strokeWeight(.4);
    line(location().x()+27,location().y()+16,location().x()+32,location().y()+18);
    line(location().x()+32,location().y()+18,location().x()+33,location().y()+24);
  popStyle();
  popMatrix();
  
  //eyes
  pushMatrix();
  pushStyle();
    fill(255, 31, 0);
    quad(location().x()+19,location().y()+25,location().x()+18,location().y()+26,location().x()+15,location().y()+25.5,location().x()+14,location().y()+23);
    quad(location().x()+31,location().y()+25,location().x()+32,location().y()+26,location().x()+35,location().y()+25.5,location().x()+36,location().y()+23);
  popStyle();
  popMatrix();
  
  //mouth
  pushMatrix();
    //fill(49, 0, 49);
    //arc(location().x()+250,location().y()+300,200,150,-PI/30,PI+PI/30);
    fill(215);
    triangle(location().x()+20,location().y()+30,location().x()+22.5,location().y()+30,location().x()+21.2,location().y()+34);
    triangle(location().x()+30,location().y()+30,location().x()+27.5,location().y()+30,location().x()+28.8,location().y()+34);
    triangle(location().x()+20,location().y()+36,location().x()+22.5,location().y()+37,location().x()+20,location().y()+33);
    triangle(location().x()+30,location().y()+36,location().x()+27.5,location().y()+37,location().x()+30,location().y()+33);
  popMatrix();
  
  //back
  pushMatrix();
    fill(215);
    triangle(location().x()+0,location().y()+0,location().x()+7,location().y()+10,location().x()+4,location().y()+13);
    triangle(location().x()+15,location().y()+-5,location().x()+17,location().y()+10,location().x()+12,location().y()+15);
    triangle(location().x()+27,location().y()+7,location().x()+30,location().y()+-10,location().x()+34,location().y()+10);
    triangle(location().x()+36,location().y()+12,location().x()+50,location().y()+5,location().x()+43,location().y()+20);
  popMatrix();
  
  //claws
  pushMatrix();
    fill(215);
    triangle(location().x()+0,location().y()+47.5,location().x()+3,location().y()+47.5,location().x()+1.5,location().y()+50);
    triangle(location().x()+3,location().y()+47.5,location().x()+6,location().y()+47.5,location().x()+4.5,location().y()+50);
    triangle(location().x()+6,location().y()+47.5,location().x()+9,location().y()+47.5,location().x()+7.5,location().y()+50);
    triangle(location().x()+9,location().y()+47.5,location().x()+12,location().y()+47.5,location().x()+10.5,location().y()+50);
    
    triangle(location().x()+41,location().y()+47.5,location().x()+38,location().y()+47.5,location().x()+39.5,location().y()+50);
    triangle(location().x()+44,location().y()+47.5,location().x()+41,location().y()+47.5,location().x()+42.5,location().y()+50);
    triangle(location().x()+47,location().y()+47.5,location().x()+44,location().y()+47.5,location().x()+45.5,location().y()+50);
    triangle(location().x()+50,location().y()+47.5,location().x()+47,location().y()+47.5,location().x()+48.5,location().y()+50);
  popMatrix();
  
  //popMatrix();
      }
    popMatrix();
  }

  //end pushStyle popStyle if use noStroke() else char turns invis.
}