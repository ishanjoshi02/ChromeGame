class Obstacle {

    float x = 650, y = 300;
    float radius = 20;
    float xSpeed = 5;
    
    public Obstacle() {
    
      if (random(0, 1) > 0.5) {
      
        y = 100;
        
      } else {
       
        y = 300;
        
      }
      
    }
    
    void setX(float x) {
      
      this.x = x;
      
    }
    
    void setY(float y) {
      
     this.y = y;
      
    }
  
  
    void render() {
      
      noStroke();
      fill(0, 0, 255);
      ellipse(this.x, this.y, radius * 2, radius * 2);
      
    }
    
    boolean update() {
    
      //System.out.println("" + this.x);
      this.x -= xSpeed;
      
      if (x < 0) {
      
        return true;
      
      } 
      
      return false;
    
    }
    
    
    boolean hitsDinosaur(Dinosaur dino) {
    
    
      if (dist(dino.x, dino.y, this.x, this.y) > (this.radius + dino.radius)) {
      
        return false;
      
      }
    
      return true;
    
    }
    
  
}