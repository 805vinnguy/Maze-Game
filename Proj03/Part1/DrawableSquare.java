/**
 * DrawableSquare.java
 * Visual representation of a square in the maze.
 *
 * @author Vinh Nguyen
 * @version 4/25/2016
 */
public class DrawableSquare extends Square implements Drawable 
{
	//constructor
	public DrawableSquare(boolean up, boolean right, boolean down, boolean left, int row, int col) 
	{
		super(up, right, down, left, row, col);
	}
	
	//method : void draw()
	public void draw() 
	{
		//leave empty until convert to processing
	}
	
	//end
}