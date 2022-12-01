public class Spaceship extends Floater  
{   
  //member variables code need to be private:
    private boolean moving, turningLeft, turningRight;
    private int teleport; 
    //constructor code needs to be public:
    public Spaceship(){
     
//easiest model:
    
  //  xCorners = new int [] {-8, 16, -8, -2};
  //  yCorners = new int [] {-8, 0, 8, 0};
 
 
 //different spaceship I designed:
 
//  corners = 13;
  
//  xCorners = new int [] {20, 0, -4, -14, -17, -10, -20, -20, -10, -17, -14, -4, 0};
 //   yCorners = new int [] {0, -12, -17, -20, -15, -9, -3, 3, 9, 15, 20, 17, 12};


corners = 11;
 xCorners = new int [] {20, 0, -4, -15,  -10, -20, -20, -10, -15,  -4, 0};
  yCorners = new int [] {0, -12, -17, -17,  -9, -3, 3, 9, 17,  17, 12};   
    
    
      myCenterX= myCenterY = 300; //300; 
      myXspeed= 0;
      myYspeed = 0;
      myPointDirection = 0; //myCenterX;
      moving = false;
     
    }
      
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public double getDirection(){return myPointDirection;}
  public double getDirectionX(){return myDirectionX;}
  public double getDirectionY(){return myDirectionY;}
  public double getXspeed(){return myXspeed;}
  public double getYspeed(){return myYspeed;}
 public void hyperspace()
 {
   myCenterX = (Math.random()*580);
  myCenterY = (Math.random()*580);
   myXspeed= 0;
   myYspeed = 0;
   //myPointDirection = 1;
   myPointDirection = (Math.random()*580);
 }
 
 
 public void show()
 {
   
  fill(253, 8, 197  );
  strokeWeight(2);
  stroke (254, 229, 248);
  
  translate((float)myCenterX, (float)myCenterY);
  float dRadians = (float)(myPointDirection*(Math.PI/180));
  rotate(dRadians);
  
   //draw the polygon
   
    beginShape();
    for (int n = 0; n < corners; n++){
      vertex(xCorners[n], yCorners[n]);
    }
    
    
    endShape(CLOSE);
    
    
    
    
  //CODE FOR WHEN THE SPACESHIP IS MOVING with the fire trailing lines
  
    if(moving){
      strokeWeight(3);
      fill(248, 203, 43);
      stroke (248, 203, 43);
      
    
    line (-20, -1.5, -35, -5);
    line (-20, 0, -40, 0);
     line (-20, 1.5, -35, 5);
      strokeWeight(1);
      
      }

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  
  
  
  //check code
  
  public void traveling(boolean check) {
    moving = check;
  }
  public void left(boolean check) {
    turningLeft = check;
  }
  public void right(boolean check) {
    turningRight = check;
  }
  public void stop(){
    teleport = 60;
  }
}
