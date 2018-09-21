int startX = 100;
int startY = 100;
int endX = 0;
int endY = 150;
float literalFloat = 0;
void setup(){
  background(0,0,100);
  size(800,600);
  strokeWeight(5); // thickness
}
void draw(){
jellyBody();
lightning();
startX = startX + 1;
}
void lightning(){
float randomColor1 = (float)(Math.random()*300)+ 100;
float randomColor2 = (float)(Math.random()*300)+ 100;
float randomColor3 = (float)(Math.random()*300)+ 100;
stroke(randomColor1, randomColor2, randomColor3);
while(endX < 500)
  {
  endX = startX + (int)(Math.random()*100);
  endY = startY + (int)(Math.random()*100);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  }
}
void jellyBody()
  {
  noStroke();
  fill(140,0,211, 10);
  arc(100 + literalFloat,100 + literalFloat,100,100,PI-2, PI+3.2);
  arc(75 +literalFloat,75 + literalFloat,50,50,PI-2, PI+3.2);
  }
void mousePressed()
{
  literalFloat = literalFloat - 1;
  startX = 100 +(int)literalFloat;
  startY = 100 + (int)literalFloat;
  endX = 0 + (int)literalFloat;
  endY = 150 + (int)literalFloat;
}
