/**
 * Treasure.java
 * Representation of a treasure(items the explorer/player must find to win) which is set randomly in the maze.
 *
 * @author Vinh Nguyen
 * @version 4/25/2016
 */
public class Treasure extends RandomOccupant 
{
	//instance
	private boolean found = false;
	
	//constructor(3)
	public Treasure(Maze maze) 
	{
		super(maze);
		super.location().setTreasure(this);
	}
	
	public Treasure(Maze maze, long seed) 
	{
		super(maze, seed);
		super.location().setTreasure(this);
	}
	
	public Treasure(Maze maze, Square location) 
	{
		super(maze, location);
		super.location().setTreasure(this);
	}
	
	//method : boolean found()
	public boolean found() 
	{
		return found;
	}
	
	//method : void setFound()
	public void setFound() 
	{
		found = true;
	}
	
	//method : void move()
	public void move() 
	{
		//override move() method in RandomOccupant so it does nothing. Treasure does not move about the maze.
	}
	
	//end
}