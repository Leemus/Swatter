float pacX, pacY;
float pacWidth, pacHeight;
 boolean [][] beeds = new boolean[30][50];
 float beedW;
 float beedH;
 float lineX;
 float lineY;
 PVector maze;
 float attackX = 250;
 float attackY = 250; 
void setup()
{
  size(700,500);

  pacWidth = 20;
  pacHeight = 20;
  beedW = 5;
  beedH = 5;
  lineX = 100;
  lineY = 100;
  maze = new PVector(100f, 100f);
  
  for ( int b = 10; b<= 29; b += 50) {
    for ( int y = 10; y<=29; y += 50)
    {
      beeds[b][y] = true;
    }
  }
}

void draw()
{
  background(0);
  
  
beeds();  


maze();
ballsoutta();
mouseClicked();
  
}
 void  balltopac()
 {
   if (attackY == mouseY)
   {
     attackX --;
   }
   
   
 }


void mouseClicked()
{
  if ( attackX == mouseX)
  {
    attackX -= 400
    ;
  }
}


void beeds()
{
   for ( int b = 10; b<20; b += 5.5) {
    for ( int y = 10; y<30; y += 5.5)
    {
     
      print(beeds[b][y]);     
      
      
     if (beeds [b][y] == true)
       {
         fill(255);
       stroke (255);
       
       
       ellipse(b, y, beedW, beedH);
       }
        if (pacX == b &&  beeds[b][y] )
       {
      beeds [b][y] = false;
    
     }
    }
   }  
}

void maze()
{
  
  stroke(255);
  line(maze.x, maze.y, maze.x + 100, maze.y);
  
  if ( pacY == maze.y)
  {
    pacY ++;
  }
  
  if ( pacX == pacX ++)
  { 
    stroke(0);
    fill(random(0, #EAFF0D) );
    ellipse(pacX + 7.5, pacY, 17, 9);
  }
  if ( pacX == pacX --)
  { 
    stroke(0);
    fill(random(0, #EAFF0D) );
    ellipse(pacX + 7.5, pacY, 17, 9);
  }
  if ( pacY == pacY ++)
  { 
    stroke(0);
    fill(random(0, #EAFF0D) );
    ellipse(pacX + 7.5, pacY, 17, 9);
  }
   if ( pacY == pacY --)
  { 
    stroke(0);
    fill(random(0, #EAFF0D) );
    ellipse(pacX + 7.5, pacY, 17, 9);
  }
}
  
  void ballsoutta()
  {
    fill(0);
    stroke(255);
    
    
    ellipse(attackX, attackY, 10, 10);
    
    if(attackY == 250)
    {
      attackX ++;
   } 
 
  }
  

  
  
  