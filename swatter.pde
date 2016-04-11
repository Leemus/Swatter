void setup()
{
  size(700,500);


  rocks = new Rocks();
  planet = new Planet();
 bg = loadImage("swatterback.png");

}
Rocks rocks;
Planet planet;
PImage bg;
void draw()
{
 background(bg);  
rocks.ballsoutta();
rocks.mouseClicked();
planet.planetcore();
  
}
/* void  balltopac()
 {
   if (attackY == mouseY)
   {
     attackX --;
   }
   
   
 }


*/
 
  
  

  
  
  