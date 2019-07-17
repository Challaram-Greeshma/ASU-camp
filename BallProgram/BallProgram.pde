int x, y, walllocation, velX; 
  void setup(){
    x=20; y=20; walllocation=600; velX=5;
    size(1000,500);
   
    
  }
  
  void draw() {
     background(255);
    fill(0);
    ellipse(x,y,20,20);
    x+=velX; 
    if(x>500)
      velX= velX*-1;
    if(x<2)
    velX=velX*-1;
  
  
  }
