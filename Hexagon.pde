class Hexagon{
   int points = 6;
   float lastTimecheck;
   float timeInterval;
  
  Hexagon() {
    lastTimecheck = millis();
    timeInterval = 1000;
  }
  
  void makeHexagon(float x, float y, float radius) {
    float angle = TWO_PI / points; 
    
    
    beginShape();
    if(millis() > lastTimecheck + timeInterval) {
      lastTimecheck = millis();
      stroke(random(255),random(255),random(255));
    }
    fill(0);
    strokeWeight(2);
    
    for (float i = 0; i < TWO_PI; i += angle) {
      float sx = x + cos(i) * radius;
      float sy = y + sin(i) * radius;
      vertex(sx, sy);
    }
    endShape(CLOSE);
  }
}
