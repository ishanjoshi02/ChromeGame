Dinosaur dino;
Obstacle[] obstacle;
ScoreBoard score;

int currentIndex = 0;
int divisor=500;
void setup() {

  size(600, 600);
  
  dino = new Dinosaur();
  obstacle = new Obstacle[10];
  score = new ScoreBoard();
  
  //for (int i = 0;i < obstacle.length;i++) {
  
  //  obstacle[i] = new Obstacle();
  
  //}
  
}

void draw() {

  background(245);
  
  if (frameCount % divisor == 0) {
  
    obstacle[currentIndex] = new Obstacle();
    currentIndex += 1;
    
    if (currentIndex >= 10) {
    
      currentIndex = 0;
      
    }
  
  }

  if(frameCount % 5000 == 0){
  
    divisor -= 50;
  
  
  }
  
  dino.render();
  dino.update();
 
 for(int i = 0;i < obstacle.length;i++) {
 
   try {
     obstacle[i].render();
     if (obstacle[i].update()) {
     
       obstacle[i] = new Obstacle();
       score.incScore();
     }
     
     if (obstacle[i].hitsDinosaur(dino)) {
     
       System.out.println("HIT");
       System.out.println(score.getScore());
       noLoop();
             
     
     }
     
     
   } catch(NullPointerException e) {
   
   }
   
   
   score.render();
   
   
   
 }
  
}

void keyPressed() {


  if (keyCode == UP || key == ' ') {
  
    //System.out.println("HIT");
    dino.onSpaceHit();
    
  }
  
}