int nX =(int)(Math.random()*400)+50;
int nY =(int)(Math.random()*400)+50;
int c =(int)(Math.random()*10000)+500;
Bacteria [] colony;
void setup()   {     
  background(0, 0, 0);
  size(500, 500);
  colony = new Bacteria[c];
  for (int i=0; i<colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
}   
void draw()   { 
  c =(int)(Math.random()*5000)+500;
  nX =(int)(Math.random()*400)+50;
  nY =(int)(Math.random()*400)+50;
  fill(0, 0, 0, 15);
  rect(0, 0, 500, 500);
  noStroke();
  for (int i=0; i<colony.length; i++) {
    colony[i].spread();
    colony[i].show();
  }
}  
class Bacteria    {  
  int myColor;
  int myX, myY;
  Bacteria() {
    myColor = color(255, 255, 255);
    myX = 250;
    myY = 250;
  }
  void spread() {
   int dr = (int)(Math.random()*5)-2;
   int ddr = (int)(Math.random()*5)-2;
    myX= myX + (int)(Math.random()*ddr)-dr;
    myY= myY + (int)(Math.random()*dr)-ddr;
  }
  void show() {
    fill(myColor);
    rect(myX, myY, 1, 1);
  }
}    
