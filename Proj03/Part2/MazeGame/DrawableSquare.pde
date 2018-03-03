/**
 * DrawableSquare.java
 * Visual representation of a square in the maze.
 *
 * @author Vinh Nguyen
 * @version 4/25/2016
 */
public class DrawableSquare extends Square implements Drawable 
{
  //constructor
  public DrawableSquare(boolean up, boolean right, boolean down, boolean left, int row, int col) 
  {
    super(up, right, down, left, row, col);
  }

  //method : void draw()
  public void draw() 
  {
    pushMatrix();
      if (this.seen())
      {
        pushStyle();
          //ground
          fill(139,0,0);
          noStroke();
          rect(this.x(),this.y(),SQUARE_SIZE,SQUARE_SIZE);
        
    
        //leaves
        pushMatrix();
          fill(249,138,138);
          translate(this.x()+20,this.y()+20);
          rotate(PI/4);
          ellipse(0,0,15,7);
        popMatrix();
        pushMatrix();
        fill(210,61,61);
        translate(this.x()+45,this.y()+40);
        rotate(-PI/2.3);
        ellipse(0,0,15,7);
        popMatrix();
        popStyle();
        
      //trees
      if (wall(UP))
      {
        //x()+
        //y()+
        pushMatrix();
        pushStyle();
            translate(x(),y()-5);
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
      if (wall(RIGHT))
      {
          pushMatrix();
          pushStyle();
          translate(x()+SQUARE_SIZE,y());
            fill(251, 0, 63);
            triangle(0,0,-12.6,16.6,12.6,16.6);
            triangle(0,16.6,-16.6,33.2,16.6,33.2);
            fill(145, 93, 86);
            rect(-5,33.2,10,16.6);
          popStyle();
          popMatrix();        
      }
      if (wall(DOWN))
      {
        pushMatrix();
        pushStyle();
            translate(x(),y()+SQUARE_SIZE);
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
      if (wall(LEFT))
      {
          pushMatrix();
          pushStyle();
            fill(251, 0, 63);
            triangle(x()+0,y()+0,x()+-12.6,y()+16.6,x()+12.6,y()+16.6);
            triangle(x()+0,y()+16.6,x()+-16.6,y()+33.2,x()+16.6,y()+33.2);
            fill(145, 93, 86);
            rect(x()+-5,y()+33.2,10,16.6);
          popStyle();
          popMatrix();          
      }
      
    
      if (this.inView())
      {
        //ground
        fill(177,20,20);
        noStroke();
        rect(this.x(),this.y(),SQUARE_SIZE,SQUARE_SIZE);
    
        //leaves
        pushMatrix();
          fill(249,138,138);
          translate(this.x()+20,this.y()+20);
          rotate(PI/4);
          ellipse(0,0,15,7);
        popMatrix();
        pushMatrix();
          fill(210,61,61);
          translate(this.x()+45,this.y()+40);
          rotate(-PI/2.3);
          ellipse(0,0,15,7);
        popMatrix();
        
        //trees
if (wall(UP))
      {
        //x()+
        //y()+
        pushMatrix();
        pushStyle();
            translate(x(),y()-5);
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
      if (wall(RIGHT))
      {
          pushMatrix();
          pushStyle();
          translate(x()+SQUARE_SIZE,y());
            fill(251, 0, 63);
            triangle(0,0,-12.6,16.6,12.6,16.6);
            triangle(0,16.6,-16.6,33.2,16.6,33.2);
            fill(145, 93, 86);
            rect(-5,33.2,10,16.6);
          popStyle();
          popMatrix();        
      }
      if (wall(DOWN))
      {
        pushMatrix();
        pushStyle();
            translate(x(),y()+SQUARE_SIZE);
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
      if (wall(LEFT))
      {
          pushMatrix();
          pushStyle();
            fill(251, 0, 63);
            triangle(x()+0,y()+0,x()+-12.6,y()+16.6,x()+12.6,y()+16.6);
            triangle(x()+0,y()+16.6,x()+-16.6,y()+33.2,x()+16.6,y()+33.2);
            fill(145, 93, 86);
            rect(x()+-5,y()+33.2,10,16.6);
          popStyle();
          popMatrix();          
      }
        
        
        
      }
      
    }
    popMatrix();
  }

  //end
}