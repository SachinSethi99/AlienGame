final color ALIEN1 = color (0,255,0); //each alien has its own colour
final color ALIEN2 = color ( 0,255,0); //differnt variations of green the alien has
final color ALIEN3 = color ( 50,100,0);

class Alien { //alien class
  int x;
  int y;
  int speedX;
  int speedY = (int)random(1,5); //the speed will be different in the y direction
  //alien speeds changes each time
Alien (int x, int y, int speedX){ //contructor for the alien 
    this.x=x; //values passed through
    this.y=y;
    this.speedX = speedX;
  }
  
 void move(){ //movemeant of the alien
   if (this.x ==0) 
   {
     this.x=width; //if it goes past 0 on x, another alien comes 
   }
   else this.x-=5;
   
   if (this.y<=15||this.y>=height -20)
   {
    speedY = -speedY; //goes from right to left if the height is hit
   }
   y =y -speedY; //speed in y direction 
     
   }
     
  
void render (){ //the aliens have been drawn 
   fill(ALIEN1); //colour has already been set 
   ellipse(x,y,30,30);
   fill(ALIEN2);
   ellipse(x,y,50,15);
  }
  
  
 void update() // used to make to call upon move and render, makes the code clearer
 {
   render(); //the creation of th alien 
   move(); //movemeant of the aline
  
 }
  

}
