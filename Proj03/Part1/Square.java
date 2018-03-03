/**
 * Square.java
 * Representation of a square in the maze.
 *
 * @author Vinh Nguyen
 * @version 4/25/2016
 */
public class Square 
{
	//named constants
	public static int SQUARE_SIZE = 50; //pixels per square
	public static int UP = 0;
	public static int RIGHT = 1;
	public static int DOWN = 2;
	public static int LEFT = 3;
	
	//instance variables
	private boolean[] walls = new boolean[4]; // NESW, does a square have a wall in that direction?
	private boolean seen = false;
	private boolean inView = false;
	private int row;
	private int col;
	private Treasure t = null;
	
	//constructor
	public Square(boolean up, boolean right, boolean down, boolean left, int row, int col) 
	{
		walls[0] = up;
		walls[1] = right;
		walls[2] = down;
		walls[3] = left;
		this.row = row;
		this.col = col;
	}
	
	//method : boolean wall(int direction)
	public boolean wall(int direction) 
	{
		return walls[direction];
	}
	
	//method : boolean seen()
	public boolean seen() 
	{
		return seen;
	}
	
	//method : boolean inView()
	public boolean inView() 
	{
		return inView;
	}
	
	//method : int row()
	public int row() 
	{
		return row;
	}
	
	//method : int col()
	public int col() 
	{
		return col;
	}
	
	//method : Treasure treasure()
	public Treasure treasure() 
	{
		return t;
	}
	
	//method : int x()
	public int x() 
	{
		return SQUARE_SIZE * col;
	}
	
	//method : int y()
	public int y() 
	{
		return SQUARE_SIZE * row;
	}
	
	//method : void setInView(boolean inView)
	public void setInView(boolean inView) 
	{
		this.inView = inView;
		if (inView == true) 
		{
			this.seen = true;
		}
	}
	
	//method : void setTreasure(Treasure t)
	public void setTreasure(Treasure t) 
	{
		this.t = t;
	}
	
	//method : void enter()
	public void enter() 
	{
		if (t != null) 
		{
			t.setFound();
		}
	}
	
	//end
}