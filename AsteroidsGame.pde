Spaceship piggy = new Spaceship();
Star[] starss;



ArrayList <Asteroids> rock;

public void setup() 
{
  size(600, 600);
  
  starss = new Star[600];
  for (int i = 0; i < starss.length; i++)
  {
    starss[i] = new Star();
  }
  
 // funky asteroids
  rock = new ArrayList <Asteroids>();
  for (int i = 0; i < 30; i++)
  {
    rock.add(new Asteroids());
  } 
}
  

  



public void draw() 
{
  background(15, 6, 103);
  frameRate(40);

for (int i = 0; i < rock.size(); i++)
  {
    rock.get(i).move();
    rock.get(i).show();
  float d = dist((float)piggy.getX()+2, (float)piggy.getY()+2, (float)rock.get(i).getX(), (float)rock.get(i).getY());
 if (d < 19) {
    rock.remove(i);
 }  
  }
   










  for (int i = 0; i < starss.length; i++)
  {
    starss[i].show();
  }
   for (int i = 0; i < rock.size(); i++)
  {
    rock.get(i).show();
    rock.get(i).move();
  }
  
  
  
  piggy.move();
  piggy.show();
  


//public void keyPressed() {
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
  //if (keyCode == DOWN){
    if(keyPressed){
  if (key == 'w' || key == 'W'){
     piggy.hyperspace();
  
  }
 }
 }
 
}
