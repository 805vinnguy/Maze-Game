import static org.junit.Assert.*;
import org.junit.*;
import java.lang.reflect.*;
import org.junit.runners.MethodSorters;
import org.junit.rules.*;
import org.junit.runner.Description;
import java.util.concurrent.TimeUnit;
import java.awt.*;
import java.util.*;
	import java.awt.event.KeyEvent;
/**
 * P3Tests.java
 * A simple JUnit test class to test the Project 3 Maze Game.
 *
 * @author Vinh Nguyen
 * @version 4/25/2016 (Written to JUnit-4.10)
 */
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class P3Tests
{   
   @Rule
   public TestRule watcher = new TestWatcher() {
      protected void starting(Description description) {
         System.out.print("Starting: " + description.getMethodName() + "...");
      }
   };
   
   @Rule
   public Stopwatch sw = new Stopwatch() {
      protected void finished(long nanos, Description description) {
         System.out.println(" (" + runtime(TimeUnit.MILLISECONDS) + " ms)");
      }
      protected void succeeded(long nanos, Description description) {
         System.out.print("Passed");
      }
      protected void failed(long nanos, Throwable e, Description description) {
         System.out.print("Failed");
      }
   };
   
   /* ------------------------------ Basic Maze Tests ---------------------------*/
   
   /*Square test*/
   @Test (timeout = 5000)
   public void SquareTest()
   {
	   Square s = new Square(true,false,false,true,2,3);
	   //named constants
	   assertEquals(50,s.SQUARE_SIZE);
	   assertEquals(0,s.UP);
	   assertEquals(1,s.RIGHT);
	   assertEquals(2,s.DOWN);
	   assertEquals(3,s.LEFT);
	   
	   //initialization
	   assertTrue(s.wall(0));
	   assertFalse(s.wall(1));
	   assertFalse(s.wall(2));
	   assertTrue(s.wall(3));
	   assertFalse(s.seen());
	   assertFalse(s.inView());
	   assertEquals(2,s.row());
	   assertEquals(3,s.col());
	   assertEquals(null,s.treasure());
	   assertEquals(150,s.x());
	   assertEquals(100,s.y());
	   
	   //methods
	   //setInView
	   assertFalse(s.inView());
	   s.setInView(true);
	   assertTrue(s.inView());
	   assertTrue(s.seen());
	   s.setInView(false);
	   assertFalse(s.inView());
	   assertTrue(s.seen());
   }
   
   /*Key Event (Explorer move())*/
   @Test (timeout = 5000)
   public void KeyEventTest()
   {
	   Square s = new Square(true,false,false,true,2,2);
	   Square[][] mazeSquares = new Square[5][5];
	   mazeSquares[0][0] = new Square(true, false, true, true, 0, 0);
       mazeSquares[0][1] = new Square(true, true, false, false, 0, 1);
       mazeSquares[0][2] = new Square(true, true, false, true, 0, 2);
       mazeSquares[1][0] = new Square(true, true, false, true, 1, 0);
       mazeSquares[1][1] = new Square(false, false, false, true, 1, 1);
       mazeSquares[1][2] = new Square(false, true, false, false, 1, 2);
       mazeSquares[2][0] = new Square(false, false, true, true, 2, 0);
       mazeSquares[2][1] = new Square(false, true, true, false, 2, 1);
       mazeSquares[2][2] = new Square(false, true, true, true, 2, 2);
	   Maze maze = new Maze(mazeSquares,3,3);
	   Explorer ex = new Explorer(mazeSquares[2][2],maze,"Vinh");
	   
	   //valid movements
	   ex.move(KeyEvent.VK_UP);
	   assertEquals(mazeSquares[1][2],ex.location());
	   ex.move(KeyEvent.VK_KP_LEFT);
	   assertEquals(mazeSquares[1][1],ex.location());
	   ex.move(KeyEvent.VK_RIGHT);
	   assertEquals(mazeSquares[1][2],ex.location());
	   ex.move(KeyEvent.VK_KP_DOWN);
	   assertEquals(mazeSquares[2][2],ex.location());
	   //invalid movements ~ do nothing
	   ex.move(KeyEvent.VK_LEFT);
	   assertEquals(mazeSquares[2][2],ex.location());
   }
   
   /* Maze test */
   @Test (timeout = 5000)
   public void mazeTest()
   {
      Square[][] mazeSquares = new Square[5][5];
      Maze maze;
      Explorer ex;
      
      /*     -------------
       *     |       |   |
       *     |       |   |
       *     -----   -   |
       *     |   |       |
       *     |   |       |
       *     |   -   -   |
       *     |       |   |
       *     |       |   |
       *     -------------
       */
    
      mazeSquares[0][0] = new Square(true, false, true, true, 0, 0);
      mazeSquares[0][1] = new Square(true, true, false, false, 0, 1);
      mazeSquares[0][2] = new Square(true, true, false, true, 0, 2);
      mazeSquares[1][0] = new Square(true, true, false, true, 1, 0);
      mazeSquares[1][1] = new Square(false, false, false, true, 1, 1);
      mazeSquares[1][2] = new Square(false, true, false, false, 1, 2);
      mazeSquares[2][0] = new Square(false, false, true, true, 2, 0);
      mazeSquares[2][1] = new Square(false, true, true, false, 2, 1);
      mazeSquares[2][2] = new Square(false, true, true, true, 2, 2);
      
      maze = new Maze(mazeSquares, 3, 3);
      ex = new Explorer(mazeSquares[0][0], maze, "Super Chris");
      
      assertEquals(mazeSquares[0][0], ex.location());
      assertEquals("Super Chris", ex.name());
      assertTrue(mazeSquares[0][0].inView());
      assertTrue(mazeSquares[0][1].inView());
      assertFalse(mazeSquares[0][2].inView());
      assertFalse(mazeSquares[1][0].inView());
      assertTrue(mazeSquares[1][1].inView());
      assertFalse(mazeSquares[1][2].inView());
      assertFalse(mazeSquares[2][0].inView());
      assertFalse(mazeSquares[2][1].inView());
      assertFalse(mazeSquares[2][2].inView());
   }
}