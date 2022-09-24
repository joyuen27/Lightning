int startX = mouseX;
int startY = 0;
int endX = mouseX;
int endY = 0;
int circleX = 150;
int score = 0;

void setup()
{
  background(0,0);
  size(300,300);
}
void draw()
{

  strokeWeight((float)(Math.random()*10));
  stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  while (endY <= 300){
    endX = startX + (int)(Math.random()*19)-9;
    endY = startY + (int)(Math.random()*10);
    line (startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }  
  
  ellipse(circleX, 300, 25, 25);
  
  if (circleX >= startX - 20 && circleX <= startX + 20 ){
      circleX = (int)(Math.random()*255);
      score++;
    }
   text(score,20,20);
  }  
  

void mousePressed()
{
  background(0);
  startX = mouseX;
  startY = 0;
  endX = mouseX;
  endY = 0;
}
