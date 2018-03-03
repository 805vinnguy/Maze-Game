/**
 * Monster.java
 * Representation of a monster, which moves randomly, in the maze.
 *
 * @author Vinh Nguyen
 * @version 4/25/2016
 */
public class Monster extends RandomOccupant 
{
	//constructor(3)
	public Monster(Maze maze) 
	{
		super(maze);
	}
	
	public Monster(Maze maze, long seed) 
	{
		super(maze, seed);
	}
	
	public Monster(Maze maze, Square location) 
	{
		super(maze, location);
	}
	
	//end
}