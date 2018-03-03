import java.util.*;
/**
 * RandomOccupant.java
 * Representation and characteristics of an occupant who/which is set/moves about randomly in the maze.
 *
 * @author Vinh Nguyen
 * @version 4/25/2016
 */
public abstract class RandomOccupant extends Occupant 
{
	//instance variables
	private Random rand;
	private Maze maze;
	
	//constructor
	public RandomOccupant(Maze maze) 
	{
		this.maze = maze;
		this.rand = new Random();
		//move to a valid random spot within the maze
		this.moveTo(maze.getSquare(rand.nextInt(maze.rows()),rand.nextInt(maze.cols())));
	}
	
	public RandomOccupant(Maze maze, long seed) 
	{
		this.maze = maze;
		this.rand = new Random(seed);
		//move to a valid random spot within the maze
		this.moveTo(maze.getSquare(rand.nextInt(maze.rows()),rand.nextInt(maze.cols())));
	}
	
	public RandomOccupant(Maze maze, Square location) 
	{
		this.maze = maze;
		this.rand = new Random();
		//move to the specified location
		this.moveTo(location);
		
	}
	
	//method : void move()
	public void move() 
	{
		Square sq = super.location();
		int row = sq.row();
		int col = sq.col();
		
		int directionToMove = rand.nextInt(4);
		while (sq.wall(directionToMove) == true) 
		{
			directionToMove = rand.nextInt(4);
		}
		//update
		if (directionToMove == sq.UP) 
		{
			row --;
		}
		else if (directionToMove == sq.RIGHT) 
		{
			col ++;
		}
		else if (directionToMove == sq.DOWN) 
		{
			row ++;
		}
		else if (directionToMove == sq.LEFT)
		{
			col --;
		}
		//move to new square position
		super.moveTo(maze.getSquare(row,col));
	}
	
	//end
}