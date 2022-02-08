public void setup()
{
  size(500,500);
  background(12, 33, 43);
}
public void draw()
{
  sierpinski(0,500,500);
  int myColor = color((int)(Math.random()*10)+130, (int)(Math.random()*50)+100, (int)(Math.random()*200)+160, (int)(Math.random()*40)+80);
  fill(myColor);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 10)
    triangle(x,y,len + x, y, x+len/2, y-len);
  else{
    sierpinski(x,y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
}
}
