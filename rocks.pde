class Rocks
{
  Rocks()
  {
  
    
  }
  
  float attackX = 250;
 float attackY = 250; 
    void ballsoutta()
  {
    fill(#FF1A1A);
    stroke(#F7FF1A);
    
    
    ellipse(attackX, attackY, 10, 10);
    
    if(attackY == 250)
    {
      attackX ++;
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
}