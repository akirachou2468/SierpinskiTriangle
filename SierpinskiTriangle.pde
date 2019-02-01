public void setup()
{
  size(500,500);
  background(255);
}
public void draw()
{
  fill(0);
  noStroke();
  sierpinski(0,500,500);
}

public void sierpinski(double x, double y, double len) 
{
  if(len<=25)
    triangle((float)x,(float)y,(float)(x+len),(float)y,(float)(x+len/2),(float)(y-len));
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
