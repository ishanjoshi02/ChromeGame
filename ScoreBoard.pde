class ScoreBoard {

  float x = 500;
  float y = 50;
  
  int score = 0;
  
  void incScore() {
  
    this.score += 1;
    
  }
  
  int getScore() {
  
    return this.score;
  
  }
  
  void render() {
  
    fill(125);
    rectMode(CENTER);
    rect(this.x, this.y, 50, 50);
    
    fill(0);
    textAlign(CENTER);
    text(score, this.x, this.y);
    
    
  
  }


}