Fly[] buzz = new Fly[50]; 
 void setup()   
 {     
   size(400, 400);
   for(int i = 0; i < buzz.length; i++)
   {
     buzz[i] = new Fly();
   }
 }   
 void draw()   
 {    
   background(101, 200, 220);
   for(int i = 0; i < buzz.length; i++)
   {
     buzz[i].show();
     buzz[i].move();
   }
 }  
 class Fly    
 {     
   int myX;
   int myY;
   int flyColor;
   int wingColor;
   Fly()
   {
     myX = (int)(Math.random()*400);
     myY = (int)(Math.random()*400);
     flyColor = (0);
     wingColor = (191);
   }
   void show()
   {
     stroke(flyColor);
     fill(wingColor);
     ellipse(myX - 4, myY - 9, 10, 15);
     ellipse(myX + 4, myY - 9, 10, 15);
     fill(flyColor);
     ellipse(myX, myY, 20, 15); 
   }
   void move()
   {
     myX = myX + (int)(Math.random()*3)-1;
     myY = myY + (int)(Math.random()*3)-1;
   }
 }    
