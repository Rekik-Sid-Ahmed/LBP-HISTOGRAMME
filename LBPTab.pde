


int[][] LBPOriginal( float[][] mat)
{
  

 for(int i =0 ;i<imagesize;i++)
 {
 
  
   //println((i*16)%imagesize+"   no : "+((i*16)/imagesize)*16);
  tab[i]=square((i*16)%imagesize,((i*16)/imagesize)*16,mat);

     printArray(tab[i]);
 }

return tab;
}

int[] square(int x,int y ,float[][] mat)
{
int[] T= new int[256];


for(int i=0; i<256 ; i++)
{
  T[i]=numO(i,cases(x,y,mat),15);
}


return T;

}

float[][] cases(int x , int y ,float[][] mat )
  {
    float[][] T16=new float[16][16];
    
   for(int i= 0;i<16;i++)
    {
      for(int j= 0; j<16 ; j++)
      {
      
    
      T16[i][j]=mat[x+i][y+j];   //       T16[i][j]=imageT[x-Dfi+i][y+j];
      

      }
      
    }
    
   return T16;
    
  }
