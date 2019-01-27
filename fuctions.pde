int numO (int val , float[][] m , int k)
{
  int n=0 ;
    for(int i=0;i<k;i++)
  for (int j=0 ; j<k ; j++)
  {
    if (val == m[i][j])
    n++;
    
  }
 
  return n;
}


class histograme {
 
  int v;
  int rep; 
  
}




float val (int i , int j , float image[][])
{
 float c=0;
  
  if (i-1<0 || i+1>imagesize || j-1<0 || j+1>imagesize ){
  if(i-1<0 && j-1<0)
  {
    c = comp(image[i][j],image[i+1][j])*pow(2,4)+
    comp(image[i][j],image[i+1][j+1])*pow(2,3)+
    comp(image[i][j],image[i][j+1])*pow(2,2);
  }
    if(i+1>imagesize && j-1<0)
  {
    c = comp(image[i][j],image[i-1][j])*pow(2,0)+
    comp(image[i][j],image[i-1][j-1])*pow(2,1)+
    comp(image[i][j],image[i][j+1])*pow(2,3);
  }
      if(i+1>imagesize && j+1>imagesize)
  {
    c = comp(image[i][j],image[i-1][j-1])*pow(2,7)+
    comp(image[i][j],image[i][j-1])*pow(2,6)+
    comp(image[i][j],image[i-1][j])*pow(2,0);
  }
  
        if(i-1<0 && j+1>imagesize)
  {
    c = comp(image[i][j],image[i][j-1])*pow(2,6)+
    comp(image[i][j],image[i+1][j-1])*pow(2,5)+
    comp(image[i][j],image[i+1][j])*pow(2,4);
  }
  
    if(i-1<0 && j-1>0 && j+1<imagesize){
        c =
        comp(image[i][j],image[i][j+1])*pow(2,6)+
        comp(image[i][j],image[i+1][j-1])*pow(2,5)+
        comp(image[i][j],image[i+1][j])*pow(2,4)+
        comp(image[i][j],image[i+1][j+1])*pow(2,3)+
        comp(image[i][j],image[i][j+1])*pow(2,2);
    }
  
    if(i-1>=0 && j-1<0 && i+1<imagesize)
  {
    c = comp(image[i][j],image[i-1][j])*pow(2,0)+
    comp(image[i][j],image[i-1][j+1])*pow(2,1)+
    comp(image[i][j],image[i][j+1])*pow(2,2)+
    comp(image[i][j],image[i+1][j+1])*pow(2,3)+
    comp(image[i][j],image[i+1][j])*pow(2,4);
  }
  
     if(i+1>imagesize && j-1>0 && j+1<imagesize)
  {
    c = comp(image[i][j],image[i][j-1])*pow(2,6)+
    comp(image[i][j],image[i-1][j-1])*pow(2,7)+
    comp(image[i][j],image[i-1][j])*pow(2,0)+
    comp(image[i][j],image[i+1][j-1])*pow(2,1)+
    comp(image[i][j],image[i][j+1])*pow(2,2);
  }
  
      if(j+1>imagesize && i-1>0 && i+1<imagesize)
  {
    c = comp(image[i][j],image[i-1][j])*pow(2,0)+
    comp(image[i][j],image[i-1][j-1])*pow(2,7)+
    comp(image[i][j],image[i][j-1])*pow(2,6)+
    comp(image[i][j],image[i+1][j-1])*pow(2,5)+
    comp(image[i][j],image[i+1][j])*pow(2,4);
  }
  }else 
  {
   c= comp(image[i][j],image[i-1][j])*pow(2,0)+
   comp(image[i][j],image[i-1][j+1])*pow(2,1)+
   comp(image[i][j],image[i][j+1])*pow(2,2)+
   comp(image[i][j],image[i+1][j+1])*pow(2,3)+
   comp(image[i][j],image[i+1][j])*pow(2,4)+
   comp(image[i][j],image[i+1][j+1])*pow(2,5)+
   comp(image[i][j],image[i][j-1])*pow(2,6)+
   comp(image[i][j],image[i-1][j-1])*pow(2,7);
  }
  return c ;
  
}
