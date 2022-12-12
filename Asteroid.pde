public class Asteroids extends Floater
{
  public String katyaa() {return "Asteroids";}
  
  private double rotSpeed, mySize;
  private int myColor;
  public Asteroids(){


 corners = 10;
  xCorners = new int [] {15, 6, 0, -6, -15, -6, -11, 0, 11, 6};
  yCorners = new int [] {5, 5, 15, 5, 5, -4, -14, -8, -14, -4};
   myColor = color(255, 255, 255);
    myCenterX = (float)(Math.random()*1000);
    myCenterY = (float)(Math.random()*800);
    myXspeed = (Math.random()*3)-2;
    myYspeed = (Math.random()*3)- 2;
    myDirectionX = ((Math.random()*2)-1);
    myDirectionY = ((Math.random()*2)-1);
    myPointDirection = 0;
    rotSpeed = (int)((Math.random()*10)-2);;
   
    mySize = 50;
 myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 

}
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public double getDirection(){
    return myPointDirection;
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
  // Below is copy and paste from Floater section
   public void show ()  
  {             
    fill(107, 14, 130  );   
    stroke(myColor);    //rainbow stroke
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    // Degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    // Begin drawing the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
}


class SmallAsteroid extends Asteroids
{
  public String katyaa() {return "SmallAsteroid";}

  public SmallAsteroid(Asteroids rock)
  {
    //star asteroid code
//corners = 10;
//  xCorners = new int [] {15, 6, 0, -6, -15, -6, -11, 0, 11, 6};
 // yCorners = new int [] {5, 5, 15, 5, 5, -4, -14, -8, -14, -4};
 
 corners = 3;
 xCorners = new int [] {14, 0, -14};
 yCorners = new int [] {0, 14, 0};
  //  myCenterX = (float)(Math.random()*1000);
  //  myCenterY = (float)(Math.random()*800);
  myCenterX = ((float)(rock.getX()));
  myCenterY = ((float)(rock.getY()));
    myXspeed = (Math.random()*3)-2;
    myYspeed = (Math.random()*3)- 2;
    myDirectionX = ((Math.random()*2)-1);
    myDirectionY = ((Math.random()*2)-1);
    myPointDirection = 0;

}
}
