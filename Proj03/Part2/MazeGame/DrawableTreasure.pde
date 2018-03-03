/**
 * DrawableTreasure.java
 * Visual representation of a treasure in the maze.
 *
 * @author Vinh Nguyen
 * @version 4/25/2016
 */
public class DrawableTreasure extends Treasure implements Drawable 
{
  //constructor(3)
  public DrawableTreasure(Maze maze) 
  {
    super(maze);
  }

  public DrawableTreasure(Maze maze, long seed) 
  {
    super(maze, seed);
  }

  public DrawableTreasure(Maze maze, Square location) 
  {
    super(maze, location);
  }

  //method : void draw()
  public void draw() 
  {
    pushMatrix();
      if (location().seen())
      {
          pushMatrix();
          pushStyle();
            translate(location().x(),location().y());
            stroke(255);
            fill(194);
            triangle(25.0,0,17.5,16.6,32.5,16.6);
            fill(177);
            triangle(25.0,0,32.5,16.6,40.0,16.6);
            noStroke();
            fill(177);
            triangle(25.0,0,17.5,16.6,10.0,16.6);
            stroke(0);
            fill(161);
            triangle(17.5,16.6,32.5,16.6,25.0,50.0);
            fill(125);
            triangle(17.5,16.6,25.0,50.0,10.0,16.6);
            fill(88);
            triangle(32.5,16.6,25.0,50.0,40.0,16.6);
          popStyle();
          popMatrix();
      
        if (super.found())
        {
          
          pushMatrix();
          pushStyle();
            translate(location().x(),location().y());
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
      }
    popMatrix();
  }

  //end
}