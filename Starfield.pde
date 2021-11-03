Particle [] bob = new Particle[100];
void setup()
{
size (500,500);


for (int i=0; i<bob.length; i++) {
  bob[i] = new Particle();
  for (int j=0; j<5; j++) {
    
  bob[j] = new OddballParticle();
  }
}
}


 
void draw()
{
 background(240,175,150);
 for (int i =0; i<bob.length; i++) {
 
   bob[i].move();
   bob[i].show();
   
 }
 

 
}
class Particle
{
  double myX,myY,myAngle,mySpeed, myOpacity;
  int myColor;
  Particle () {
    
    myColor = color (211,94,47);
    myAngle = (double)(Math.random()*3)*(Math.PI);
    mySpeed = (double)(Math.random()*8);
    myOpacity=(int)(Math.random()*50)+75;
    myX = 250; 
    myY = 250; 
    
  }
  
  void move () {
    
    myX = myX + Math.cos(myAngle)*mySpeed + (int)(Math.random()*3)-2 ;
    myY = myY + Math.sin(myAngle)*mySpeed + (int)(Math.random()*3)-2;
    
    
  }
  
  void show () {
    
    noStroke();
    fill (myColor);
    
    ellipse ((float)myX,(float) myY, 75, 75);
    
    stroke(0);
    strokeWeight(2);
    arc ((float)myX-25, (float)myY, 30,45, 0, PI/2);
    arc ((float)myX-25, (float)myY, 30,45, -PI/2,0 );
    
    arc ((float)myX+25, (float)myY, 30,45,  PI / 2, 3 * PI / 2);
    
    line ((float)myX-32.5,(float)myY,(float)myX+32.5,(float)myY);
    line ((float)myX,(float)myY-32.5,(float)myX,(float)myY+32.5);
    
    
  }
    
}

class OddballParticle extends Particle//inherits from Particle
{
  
  OddballParticle() {
    myColor = color (0);
    myAngle = (double)(Math.random()*2)*(Math.PI);
    mySpeed = (double)(Math.random()*2);
    myX = 200; 
    myY = 200; 
  }
  
  void move () {
    
    myX = myX + Math.cos(myAngle)* mySpeed + (int)(Math.random()*5)-1;
    myY = myY + Math.sin(myAngle)* mySpeed +(int)(Math.random()*5)-1;
    
  }
  
  void show () {
   
     noStroke();
    fill (0,255,0);
    
    ellipse ((float)myX,(float) myY, 75, 75);
    
    stroke(255);
    strokeWeight(2);
    
    arc ((float)myX-25, (float)myY, 30,45, 0, PI/2);
    arc ((float)myX-25, (float)myY, 30,45, -PI/2,0 );
    arc ((float)myX+25, (float)myY, 30,45,  PI / 2, 3 * PI / 2);
    
    
    
  }
}



