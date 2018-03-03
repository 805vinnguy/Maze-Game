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
		//leave empty until convert to processing
	}
	
	//end
}