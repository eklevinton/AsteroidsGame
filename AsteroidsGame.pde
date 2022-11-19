Spaceship piggy = new Spaceship();
Star[] starss;

public void setup() 
{
  size(600, 600);
  
  starss = new Star[600];
  for (int i = 0; i < starss.length; i++)
  {
    starss[i] = new Star();
  }
}

public void draw() 
{
  background(15, 6, 103);
  frameRate(80);

//piggy.move();
 // piggy.show(); 


  for (int i = 0; i < starss.length; i++)
  {
    starss[i].show();
  }
  
  piggy.move();
  piggy.show();
  
}

public void keyPressed() {
  //Play the game with keypresses
  
  if (keyPressed) {
    if (key == CODED){
    if (keyCode == LEFT) { 
      piggy.turn(-4);
      piggy.right(true);
    } 
    else {
      piggy.right(false);
    }
    }
    
    if (key == CODED){
    if (keyCode == RIGHT){ 
      piggy.turn(4);
      piggy.left(true);
    } 
    else {
      piggy.left(false);
    }
    }

    if (key == CODED){
    if (keyCode == UP){ 
      piggy.accelerate(0.2);
      piggy.traveling(true);
    } else {
      piggy.traveling(false);
    }
    }
   
   
  // if (key == CODED){
  if (key == CODED){
     if (keyCode == DOWN){
       piggy.hyperspace();
     }
   
  
  }
  
  }
  
}
