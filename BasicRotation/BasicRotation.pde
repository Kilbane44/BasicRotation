float rot = 0;
float rotDelta = PI/60;

void setup()
{
  size(800,800);
  rectMode(CENTER);
}


void draw()
{
  //red square
  fill(255,0,0);
  rect(400,400, 100, 100);
  
  
  
  
  
  pushMatrix(); 
    //translate
    translate(mouseX,mouseY);
    //rotate
    rotate(rot);
    //Render (draw)
    fill(0,255,0);
    rect(0,100, 100, 100);
  popMatrix();
  
  rot += rotDelta;
}

void keyPressed()
{
  rotDelta *= -1;
}