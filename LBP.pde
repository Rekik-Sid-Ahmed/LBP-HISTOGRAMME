import java.awt.*;
import processing.video.*;
 

PImage img;
  float[][] imageT;
  int p=1 , imgNum=8;
   float[][] image;
   
PImage img1;
  Capture c;

   
   int Dii=400; // distance entre l'image real et leur l'image LBP
   int Dfi=400; // distance entre le debut de la fenaitre et l image 
   
   int valx , valy;
   
   
   
   int[][] tab=new int[256][256]; // first image 
    int[][] tab2=new int[256][256]; // secound image 
   

  String[] sidou = {" "};
  int imagesize=256;
  
  
  Capture capture;
  
  
 
    public void settings(){
   size(1400,650);
  }
  
void setup() {
    clear();

      
   //frameRate(10);
 
}

void draw(){
  

background(255);  
 
 // colorMode(HSB, 100, 100, 100, 100);
   img=loadImage("man"+p+".jpg"); 
  //frameRate(60);
  
  int w=img.width;
  int h=img.height;
    loadPixels();
  img.loadPixels();
image=new float[w][h];
 imageT=new float[imagesize][imagesize];
  for(int i=0;i<h;i++)
  {    
      for(int j=0;j<w;j++)
      {
        int loc=j*img.width+i;
        //recuperer le niveau de gris
        float r =img.pixels[loc];
        image[i][j]=r;
        
      }
  
  
  
  }
  
     imageT=Matnew(image);
     
 
   for(int i=1;i<imagesize-1;i++)
  {for (int j=1 ; j<imagesize-1 ; j++)
  {
    set(i+Dfi,j,color((int)image[i][j]));
    set(i+Dfi+imagesize+Dii,j,color((int)imageT[i][j]));
   // print (imageT[i][j] +"  "  );
  }
//println();
}

int[] T= new int[256];
for(int i=0; i<255;i++)
{
  T[i]=numO(i,imageT,imagesize-1);
  
  fill(i);
  rect(i*5+50, 600, 2, -T[i]/100);
}
mousePos();



  
}

 
 
 




float comp( float val , float voi )
{
 float v =0;
 
 if (val > voi)
 {
  v=0;
  
 }else 
 {
  
   v=1;
 }
 
 return v ; 
  
}
float[][] Matnew (float image[][] )
{
  float [][] m = new float [imagesize][imagesize];
  
  for(int i=0;i<imagesize-1;i++)
  for (int j=0 ; j<imagesize-1 ; j++)
  {
  
     m[i][j]=val(i,j,image);
  }
  
  
  return m;
}
