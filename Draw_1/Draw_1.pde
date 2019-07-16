
int w, h, x, y;
float x1, y1; 
ArrayList<myDot> dots; 
int numDots= 500;

  void setup(){
    dots= new ArrayList<myDot>();
    w =int(random(20,20));
    h=int (random(20,20));
    x=int(random(1000,500));
    y=int(random(1000,500));
  
  for(int i=0; i<numDots; i++){
    myDot dot= new myDot(x, y, h, w);
    dots.add(dot);
  }
  
  size(1000,1000);
    background(1000);
    colorMode(HSB);
    w= 20; 
    h=20;
    x=350;
    y=200; 
    x1=556;
    y1=278;
   
}

void draw(){ 
  
  fill(2000,235,300);
  //ellipse(x, y, w, h);
  //x+= 0.5;
  //y+=0.5;
  //ellipse(x1, y1, w, h); x1-=0.5; y1+=0.5;
  for(myDot d: dots) d.draw();
  

}
