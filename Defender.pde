class defender {
  int x; //global varibles 
  int y;
  
  defender (int x, int y) //values past through the contructor 
  {
   this.x = x; 
   this.y= y;
    
  }
  
  
 void render () //draw the defneder
 {
   fill(255,0,0); //the colour fo the defenders body
   rect(x,y,50,20);
   triangle(x+50,y,x+50,y+20,x+60,y+10); //the defenders point
   fill(0,0,100); //colour of the triangle
   rect(x,y-10,20,10);
 }
  
boolean crash () // uses colours to detect if a crash has ocurred
{
 color pixel;
 for (int i=y; i<=y+20; i++){ // this is loop so it still detects for the colour 
   pixel = get(x+60,i);
   if (pixel == ALIEN1 || pixel==ALIEN2 || pixel==ALIEN3){ //if its the colour then crash
     return true;
   }
 }
 return false;
}
} 
  
  
  

  
  
  
  
  
  
  
  
  
  
  
  
