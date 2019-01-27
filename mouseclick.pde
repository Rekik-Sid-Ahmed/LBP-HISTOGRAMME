
void mousePos()  // fuction for send p
{

  stroke(255,0,0);
if(((mouseX > Dfi && mouseX<imagesize+Dfi )|| (mouseX >imagesize+Dii+Dfi && mouseX <Dfi+imagesize+Dii+imagesize))  && mouseY <imagesize){
line(mouseX, mouseY +10, mouseX, mouseY-10);
  line(mouseX+10, mouseY, mouseX-10, mouseY);
  
if(mouseX <Dfi+imagesize+Dii){

  line(mouseX+imagesize+Dii, mouseY +10, mouseX+imagesize+Dii, mouseY-10);
  line(mouseX+imagesize+Dii+10, mouseY, mouseX+imagesize+Dii-10, mouseY);
  valx=mouseX;
}
else{
  line(mouseX-(imagesize+Dii), mouseY +10, mouseX-(imagesize+Dii), mouseY-10);
  line(mouseX-(imagesize+Dii)+10, mouseY, mouseX-(imagesize+Dii)-10, mouseY);
  valx=mouseX-(imagesize+Dii);

}
valy=mouseY;


}
stroke(0);

}



void mousePressed() 
{
  if(((mouseX > Dfi && mouseX<imagesize+Dfi )|| (mouseX >imagesize+Dii+Dfi && mouseX <Dfi+imagesize+Dii+imagesize))  && mouseY <imagesize)
  {
    String[] args = {"16*16"};
  SecondApplet sa = new SecondApplet();
  PApplet.runSketch(args, sa);
  }
  
  tab=LBPOriginal(imageT);
  
   if(mouseX>1200 && mouseY>400)
  {
    String[] args = {"16*16"};
 capture sa = new capture();
  PApplet.runSketch(args, sa);
  }
 
 // if(p<imgNum-1)
 // p++;
 // else
 //p=0;
}
