public class capture extends PApplet {



public void settings()
{
  size(256,256);
     
  
}

  
  public void  setup()
  {
    
    c =  new Capture(this);
    c.start();
  
    
  
    
  }
  
public  void draw()
{
  if(c.available())
  {
    
  
    c.read();
    
   

  image(c, 0,0); 
  if (mousePressed == true) {
  
     img1=c.get(0,0,256,256);
     img1.save("hani1.png");
     img1.save("hani1.jpg");
     c.stop();
  }
 
  }
}


void mousePressed()
{
     
  
  
}
}
