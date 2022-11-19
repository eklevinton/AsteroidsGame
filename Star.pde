public class Star //note that this class does NOT extend Floater

{
  private int myX, myY;
Star() {
  
  
  myX = (int)(Math.random()*600);
  myY = (int)(Math.random()*600);
    
 }
  
  public void show() {
    
    // triangle, yellow stars
    
   beginShape();
    strokeWeight(2);
    stroke(254, 241, 193);
    fill(254, 241, 193);
    triangle ((float)myX-0, (float)myY-0, (float)myX+1, (float)myY+1.5, (float)myX-1, (float)myY+1.5);
  }
}
    
 //end code
    
   

  
