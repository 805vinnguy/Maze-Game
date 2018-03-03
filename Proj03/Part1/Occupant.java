/**
 * Occupant.java
 * Representation and characteristics of all occupants in the maze.
 *
 * @author Vinh Nguyen
 * @version 4/25/2016
 */
public abstract class Occupant 
{
	//instance variables
	private Square loc;
	
	//constructor(2)
	public Occupant() {}
	public Occupant(Square start) 
	{
		loc = start;
	}
	
	//method : Square location()
	public Square location() 
	{
		return loc;
	}
	
	//method : void moveTo(Square newLoc)
	public void moveTo(Square newLoc) 
	{
		loc = newLoc;
	}
	
	//end
}