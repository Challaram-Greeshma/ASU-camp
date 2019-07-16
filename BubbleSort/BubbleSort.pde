int[] array =new int[30];
  int maxValue= 50; 
  // Visual parameters
  int speed=4;
  float xStart=9; 
  float lineSpace =18;
  
  void setup(){
  size(1000,800);
  for (int i=0; i<array.length; i++) {
    array[i] = (int)random(0, maxValue);
  }
  println(array);
  frameRate(speed);
  colorMode(HSB);
}

int i=0; 
  void draw(){ 
     background(0);
     for(int n=0; n<array[n]; n++){
       if (array[i]>array[n]) {
      int temp=array[n]; 
      array[n]=array[i];
      array[i]= temp; 
       }
         
         fill(255);
         text(array[n], 50, 20+30*array[i]);
         float c = map(array[n], 0, maxValue,0,260);
             stroke(c, 250, 250);
             strokeWeight(10);
    
    //Draw a rectangle
        rect(xStart, 25+lineSpace*n, xStart+5*array[n], 25+lineSpace*n);
  }
        i++;
     if (i>array.length-1)
     noLoop();
}
