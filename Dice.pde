int rollCounter;

void setup()
{
  noLoop();
  size(800, 850);
}
void draw()
{
  background(40,80,160);
  for (int y = 30; y <= 700; y += 120)
  {
    for (int x = 50; x <= 750; x+= 120)
    {
      Die allhumans = new Die(x, y);
      allhumans.show();
    }
  }
}
void mousePressed()
{
  redraw();
  rollCounter = 0;
}
class Die //models one single dice cube
{
  //variable declarations here
  int rollNum;
  int myX, myY;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll(); //initializing something
  }
  void roll()
    {
    int random = (int)(Math.random() * 6);
    if (random == 0)
    {
      rollNum = 1;
      rollCounter += 1;
    } else if (random == 1)
    {
      rollNum = 2;
      rollCounter += 2;
    } else if (random == 2)
    {
      rollNum = 3;
      rollCounter += 3;
    } else if (random == 3)
    {
      rollNum = 4;
      rollCounter += 4;
    } else if (random == 4)
    {
      rollNum = 5;
      rollCounter += 5;
    } else
    {
      rollNum = 6;
      rollCounter += 6;
    }
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX, myY, 100, 100, 20);
    fill((int)(Math.random() * 236) - 20, (int)(Math.random() * 236) - 20, (int)(Math.random() * 236) - 20);
    if (rollNum == 1)
    {
      ellipse(myX + 50, myY + 50, 20, 20);
    } else if (rollNum == 2)
    {
      ellipse(myX + 20, myY + 20, 20, 20);
      ellipse(myX + 80, myY + 80, 20, 20);
    } else if (rollNum == 3)
    {
      ellipse(myX + 20, myY + 20, 20, 20);
      ellipse(myX + 80, myY + 80, 20, 20);
      ellipse(myX + 50, myY + 50, 20, 20);
    } else if (rollNum == 4)
    {
      ellipse(myX + 20, myY + 20, 20, 20);
      ellipse(myX + 80, myY + 80, 20, 20);
      ellipse(myX + 20, myY + 80, 20, 20);
      ellipse(myX + 80, myY + 20, 20, 20);
    } else if (rollNum == 5)
    {
      ellipse(myX + 20, myY + 20, 20, 20);
      ellipse(myX + 80, myY + 80, 20, 20);
      ellipse(myX + 20, myY + 80, 20, 20);
      ellipse(myX + 80, myY + 20, 20, 20);
      ellipse(myX + 50, myY + 50, 20, 20);
    } else if (rollNum == 6)
    {
      ellipse(myX + 20, myY + 20, 20, 20);
      ellipse(myX + 80, myY + 80, 20, 20);
      ellipse(myX + 20, myY + 80, 20, 20);
      ellipse(myX + 80, myY + 20, 20, 20);
      ellipse(myX + 50, myY + 20, 20, 20);
      ellipse(myX + 50, myY + 80, 20, 20);
    }
    fill(255);
    stroke(2);
    rect(50, 760, 700, 60, 10);
    textSize(16);
    fill(100, 100, 255);
    text("roll total: " + rollCounter, 70, 795);
    text("maximum possible: 216", 538, 795);
    text("minimum possible: 36", 280, 795);
  }
}
