import java.util.*;
/**
 * Maze.java
 * Representation of the maze.
 *
 * @author Vinh Nguyen
 * @version 4/25/2016
 */
public class Maze
{
  // named constants
  public static final int ACTIVE = 0;
  public static final int EXPLORER_WIN = 1;
  public static final int MONSTER_WIN = 2;

  // instance variables
  private Square[][] squares;
  private ArrayList<RandomOccupant> randOccupants;
  private Explorer explorer;
  private int rows;
  private int cols;

  /**
   * Constructor for objects of class Maze
   */
  public Maze(Square[][] squares, int rows, int cols)
  {
    // CHANGED - initialize the squares, rows, and cols instance variables to
    //          what is passed in to the constructor
    this.squares = squares;
    this. rows = rows;
    this.cols = cols;

    // CHANGED - create the empty ArrayList of RandomOccupants
    randOccupants = new ArrayList<RandomOccupant>();
  }

  // QUERIES
  public Square getSquare(int row, int col) { 
    return squares[row][col];
  }
  public int rows() {
    return rows;
  }
  public int cols() {
    return cols;
  }
  public String explorerName() {
    return explorer.name();
  }
  public Explorer getExplorer() {
    return explorer;
  }

  // CHANGED - Implement the following two methods.  I have them stubbed to return dummy values just so it will compile.
  //          Your getRandomOccupant should return the occupant from the ArrayList at the specified index.
  public RandomOccupant getRandomOccupant(int index) 
  {
    return randOccupants.get(index);
  }
  public int getNumRandOccupants() 
  {
    return randOccupants.size();
  }

  // COMMANDS
  // CHANGED - implement the following method
  public void addRandomOccupant(RandomOccupant ro) 
  {
    randOccupants.add(ro);
  }

  public void setExplorer(Explorer e) {
    explorer = e;
  }

  public void explorerMove(int key)
  {
    explorer.move(key);
  }

  public void randMove()
  {
    // CHANGED - instruct each object in the RandomOccupant to move
    for (RandomOccupant rnd : randOccupants) 
    {
      rnd.move();
    }
  }

  /**
   * Returns the status of the game.
   *
   * If all treasures have been found, return EXPLORER_WIN.
   * If not, check each maze occupant, if it is a Monster and
   *    it is in the same location as the Explorer, return
   *    MONSTER_WIN.  Note that you can use == to check locations, do you know why?
   * Otherwise, return ACTIVE.
   */
  public int gameStatus()
  {
    int status = ACTIVE;

    // CHANGED - implement
    if (this.foundAllTreasures()) 
    {
      return EXPLORER_WIN;
    }
    for (RandomOccupant rnd : randOccupants) 
    {  
      if (rnd instanceof Monster) 
      {
        if (explorer.location() == rnd.location()) 
        {
          return MONSTER_WIN;
        }
      }
    }

    return status;
  }

  private boolean foundAllTreasures()
  {
    boolean foundAll = true;

    // CHANGED - search through all the occupants to see if the Treasures have been found.  Return false if
    //        - there is a Treasure that hasn't been found.
    for (RandomOccupant rnd : randOccupants) 
    {
      if (rnd instanceof Treasure)
      {
        if ( ((Treasure)rnd).found() == false) 
        {
          return false;
        }
      }
    }

    return foundAll;
  }

  public void lookAround(Square s)
  {
    int row = s.row();
    int col = s.col();

    // Clear what was previously in view
    resetInView();

    // Set the current square so that we are viewing it (obviously)
    s.setInView(true);
    //squares[row][col].setInView(true);

    // CHANGED - Check the adjacent squares.  If there isn't a wall in the way, set their inview to true.
    //        - Check the diagonal squares.  If there isn't a wall in the way, set their inview to true.

    if (!s.wall(s.UP)) 
    {
      squares[row-1][col].setInView(true);
      if (!squares[row-1][col].wall(s.LEFT)) 
        squares[row-1][col-1].setInView(true);
      if (!squares[row-1][col].wall(s.RIGHT)) 
        squares[row-1][col+1].setInView(true);
    }
    if (!s.wall(s.RIGHT)) 
    {
      squares[row][col+1].setInView(true);
      if (!squares[row][col+1].wall(s.UP)) 
        squares[row-1][col+1].setInView(true);
      if (!squares[row][col+1].wall(s.DOWN)) 
        squares[row+1][col+1].setInView(true);
    }
    if (!s.wall(s.DOWN)) 
    {
      squares[row+1][col].setInView(true);
      if (!squares[row+1][col].wall(s.LEFT)) 
        squares[row+1][col-1].setInView(true);
      if (!squares[row+1][col].wall(s.RIGHT)) 
        squares[row+1][col+1].setInView(true);
    }
    if (!s.wall(s.LEFT)) 
    {
      squares[row][col-1].setInView(true);
      if (!squares[row][col-1].wall(s.UP)) 
        squares[row-1][col-1].setInView(true);
      if (!squares[row][col-1].wall(s.DOWN)) 
        squares[row+1][col-1].setInView(true);
    }
  }

  private void resetInView()
  {
    for (int i = 0; i<rows; i++) {
      for (int j = 0; j<cols; j++) {
        squares[i][j].setInView(false);
      }
    }
  }
  //end
}