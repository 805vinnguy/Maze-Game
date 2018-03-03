/**
 * DrawableMaze.java
 * Visual representation of the maze.
 *
 * @author Vinh Nguyen
 * @version 4/25/2016
 */
public class DrawableMaze extends Maze implements Drawable 
{
  //constructor
  public DrawableMaze(DrawableSquare[][] maze, int rows, int cols) 
  {
    super(maze, rows, cols);
  }

  //method : void draw()
  public void draw() 
  {
    pushMatrix();
      fill(90,0,0);
      rect(0,0,width,height);
      //rect(0,0,ROWS * getSquare(0,0).SQUARE_SIZE,COLS * getSquare(0,0).SQUARE_SIZE);
    
      for (int i = 0;i < this.rows(); i++)
      {
        for (int j = 0; j < this.cols(); j++)
        {
          ((DrawableSquare)getSquare(i,j)).draw();
        }
      }
    
      for (int n = 0; n < this.getNumRandOccupants(); n++)
      {
        if (getRandomOccupant(n) instanceof Monster)
        {
          ((DrawableMonster)getRandomOccupant(n)).draw();
        }
        if (getRandomOccupant(n) instanceof Treasure)
        {
          ((DrawableTreasure)getRandomOccupant(n)).draw();
        }
      }
    
      ((DrawableExplorer)getExplorer()).draw();
      lookAround(getExplorer().location());
    popMatrix();
  }

  //end
}