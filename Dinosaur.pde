class Dinosaur {

  public Dinosaur() {
  }
  
  float x = 50;
  float y = 300;
  float ySpeed = 1;
  float gravity = 0.005;
  float radius = 20;
  
  void setY(float y) {
  
    this.y = y;
    
  } 
  
  void onSpaceHit() {
  
    this.y -= 100;
    
  }
  
  void render() {
  
    fill(255, 0, 0);
    noStroke();
    ellipse(this.x, this.y, this.radius * 2, this.radius * 2);
  
  }
  
  void update() {
  
    if (y < 300) {
    
      y += ySpeed;
      ySpeed += gravity;
    
    } else {
     
      ySpeed = 5;
      y = 300;
      
    }
    
  }

}