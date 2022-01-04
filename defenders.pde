PImage background;
int x=0; //global variable background location
Alien alien1; //I have 3 aliens and they'll be called uo 
Alien alien2;
Alien alien3;
defender player1; //the user will control the defender
int gameMode= 0; //game mode allows me end the enitre game


void setup()
{
 size(800,500); //size of the canvas
 background = loadImage("spaceBackground1.jpg"); //background of the image and path
 background.resize(width,height); //background resized
 alien1 = new Alien (800,200, (int)random(1,5)); //the postion of the aliens x,y
 alien2 = new Alien(800,300,(int)random(1,5)); //each alien will have a random speed between 1 and 5
 alien3 = new Alien(800,100,(int)random(1,5));
 player1 = new defender(10,250);// the postion of the defender when the game begins
 
}

void draw () 
{
  if (gameMode==0){ //if the game is 0, then set background to these values
    image(background,x,0);
    image(background, x=background.width,0);
    x=-4;
    if (x==background.width){
      x=0;
    }
    
  alien1.update(); //the render and move, gets called for each alien
  alien2.update();
  alien3.update(); 

  player1.render(); 
  if (player1.crash()) // if the player crashes then gamemode is 1
  {
    gameMode=1; //this means the game will end
  }
}
  else {
    background(0); //if the player hits an alien then this message will appear
    textSize(28); //text size
    text("GAME FINISHED", 100,250); //message and postion
    fill(255); //black background
  }


}

void drawbackground ()
{
 image(background, x, 0); //draw background twice adjacent
 image(background, x+background.width, 0);
 x -=4;
 if(x == -background.width)
 x=0; //wrap background
}

void keyPressed()
{
  if (key == CODED) //allows the use of keyboard functions
  { 
    if (keyCode== UP) // if the user clicks the up arrow the player's y goes up by 10
    {
      if(player1.y >=10){ //if the player reaches 10 on y axis, they'll stop
      player1.y = player1.y -10;
      }
    }
    else if (keyCode == DOWN) //however if user clicks down key then the player goes down by 10
    {
      if(player1.y <height -20){ // the player cannot go past 480 on y axis 
      player1.y =player1.y + 10;
      }
    }
      
  }
  
}
