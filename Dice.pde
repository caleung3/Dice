void setup()
{
    size (720,700);
   // texAlign(CENTER);
    noLoop();
}

void draw()
{
    text("", 300,680);
    int totalPoint = 0;
    int r = (int)(Math.random()*255)+1;
    int g = (int)(Math.random()*255)+1;
    int b = (int)(Math.random()*255)+1;
    
    //different background each click
    background(r, g, b);
    
    for (int y=10; y<600; y=y+80)
    {
    for (int x=10; x<700; x=x+80)
    {
       Die bob = new Die(x,y);
       bob.roll();
       bob.show();
       totalPoint=totalPoint+bob.numberDot;
       
    }
    }
  fill(250);
  textSize(30);
  text("Total Point is " + totalPoint, 230, 680);
 
}

void mousePressed()
{
            redraw();
            text("", 300,680);
}

class Die
{
    
    int myX, myY, numberDot;
    
    Die (int x, int y)
    { 
       
        myX = x; 
        myY = y;
    }
    
   
    void roll()
    {
       
        numberDot = (int)(Math.random()*6)+1;
    }
    void show()
    {
        
        noStroke();
        fill(255);
       
        //ellipse(myX, myY, 40, 50);
        rect(myX, myY, 60, 60);
        fill(0);
        if (numberDot == 1)
        {
        ellipse(myX+30, myY+30, 10,10);
        } else if (numberDot == 2)
        {
            ellipse(myX+20, myY+30, 8,8);
            ellipse(myX+40, myY+30, 8,8);
        } else if (numberDot ==3) 
        {        
           ellipse(myX+30, myY+20, 8,8);
           ellipse(myX+45, myY+40, 8,8);
           ellipse(myX+15, myY+40, 8,8); 
        } else if (numberDot ==4)
        {
           ellipse(myX+20, myY+20, 8,8);
           ellipse(myX+40, myY+20, 8,8);
           ellipse(myX+20, myY+40, 8,8);
           ellipse(myX+40, myY+40, 8,8);
        }  else if (numberDot ==5)
        {
           ellipse(myX+20, myY+20, 8,8);
           ellipse(myX+40, myY+20, 8,8);
           ellipse(myX+20, myY+40, 8,8);
           ellipse(myX+40, myY+40, 8,8);
           ellipse(myX+30, myY+30, 8,8);
        } else
        {      
           ellipse(myX+10, myY+20, 8,8);
           ellipse(myX+30, myY+20, 8,8);
           ellipse(myX+50, myY+20, 8,8);
           ellipse(myX+10, myY+40, 8,8);
           ellipse(myX+30, myY+40, 8,8);
           ellipse(myX+50, myY+40, 8,8);
        }
    }
}
