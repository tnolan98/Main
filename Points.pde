public class Points extends Object {
  
  float pntY;
  int px;
  float pntSpeed = 8.0;
  int pntrad = 15;
  
  //create points
  public void render()
  {
    fill(255, 255, 0);
    strokeWeight(2);
    stroke(0);
    ellipse(this.px, this.pntY, pntrad, pntrad);
    this.px += -pntSpeed;
    if (this.px < 0)
    {
      this.pntY = random(50, 450);
      this.px = 1000;
    }
  }
  
  public void hit()
  {
    for(int i = 0; i < 2; i++)
    {
      if (this.px >= 30 && this.px <= 60 && this.pntY >= (py) && this.pntY <= (py + 40) ) 
      {
        score = score + 2;
        ammo++;
      }
    }
  }
  
}

//Test