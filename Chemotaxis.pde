Bacteria [] bobby;
void setup()
{
  size(400,400);
  bobby = new Bacteria[40];
  for(int i = 0; i < bobby.length; i++)
  {
    bobby[i] = new Bacteria();
  }
}
void draw()
{
  background(250);
  ellipse(50,50,80,80);
  ellipse(35,40,10,10);
  ellipse(65,40,10,10);
  ellipse(50,65,30,30);
  for(int i = 0; i < bobby.length; i++)
  {
    bobby[i].show();
    bobby[i].walk();
  }
}
class Bacteria
{
  int myX, myY, col; 
  Bacteria()
  {
    myX = myY = 390;
    col = 155;
  }
  void walk()
  {
    if(myX > 50 && myY > 65)
    {
      myX = myX - (int)(Math.random()*3);
      myY = myY - (int)(Math.random()*3);
    }
  }
  void show() 
  {
    fill(col);
    ellipse(myX, myY, 20,20);
  }
} 
