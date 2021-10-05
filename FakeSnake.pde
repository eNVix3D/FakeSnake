//Nicklas 2i | Programmering Snake | 05.10.2021
 int BallAmount = 150;
 int X[] = new int[BallAmount];
 int Y[] = new int[BallAmount];

void setup(){
 size(1000,1000); 
    
 for(int i=0; i<BallAmount; i++){
   X[i] = (i+1)*10; 
   Y[i] = 100;
 }
}

void draw(){
  clear();
  background(50);
  
 for(int i=0 ; i<X.length ; i++){
   noStroke();
   //Convert float to int for better RGB control

   
   fill((255.0/BallAmount)*i,0,255);
   //fill(i*(255/BallAmount));
   //circle(X[i],Y[i],10);
   rect(X[i],Y[i],10,10);
 }
}

void keyPressed(){
 if(key=='w') Y[0]=Y[0]-10; 
 if(key=='s') Y[0]=Y[0]+10;
 if(key=='a') X[0]=X[0]-10;
 if(key=='d') X[0]=X[0]+10;
 
 for(int i=X.length-1 ; i>0 ; i--){
 X[i]=X[i-1];
 Y[i]=Y[i-1];
 }
}
