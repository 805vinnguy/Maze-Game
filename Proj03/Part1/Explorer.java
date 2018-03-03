import java.awt.event.KeyEvent;
/**
 * Explorer.java
 * Representation of an explorer(player) in the maze.
 *
 * @author Vinh Nguyen
 * @version 4/25/2016
 */
public class Explorer extends Occupant 
{
	//instance variables
	private String name;
	private Maze maze;
	
	//constructor
	public Explorer(Square location, Maze maze, String name) 
	{
		super(location);
		this.name = name;
		this.maze = maze;
		
		maze.lookAround(location);
	}
	
	//method : String name()
	public String name() 
	{
		return name;
	}
	
	//method : void move(int key)
	public void move(int key) 
	{
		//key pressing
		/*
			non-numpad
			VK_UP
			VK_RIGHT
			VK_DOWN
			VK_LEFT
			numpad
			VK_KP_UP
			VK_KP_RIGHT
			VK_KP_DOWN
			VK_KP_LEFT
		*/
		Square sq = super.location();
		int row = sq.row();
		int col = sq.col();
		//update
		
		if (key == KeyEvent.VK_UP || key == KeyEvent.VK_KP_UP) 
		{
			row --;
			if (!sq.wall(sq.UP)) 
				this.moveTo(maze.getSquare(row,col));
		}
		if (key == KeyEvent.VK_RIGHT || key == KeyEvent.VK_KP_RIGHT) 
		{
			col ++;
			if (!sq.wall(sq.RIGHT)) 
				this.moveTo(maze.getSquare(row,col));
		}
		if (key == KeyEvent.VK_DOWN || key == KeyEvent.VK_KP_DOWN) 
		{
			row ++;
			if (!sq.wall(sq.DOWN)) 
				this.moveTo(maze.getSquare(row,col));
		}
		if (key == KeyEvent.VK_LEFT || key == KeyEvent.VK_KP_LEFT) 
		{
			col --;
			if (!sq.wall(sq.LEFT)) 
				this.moveTo(maze.getSquare(row,col));
		}
	}
	
	//method : void moveTo(Square s)
	public void moveTo(Square s) 
	{
		super.moveTo(s);
		//call Square enter() method here.
		s.enter();
		//call Maze lookAround() method here.
		maze.lookAround(s);
	}
	
	//end
}