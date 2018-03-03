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
		//leave empty until convert to processing
	}
	
	//end
}