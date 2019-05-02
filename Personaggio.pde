class Personaggio {
  float x, y;
  float speed = 5;
  color dress;

  Personaggio(float x, float y, color dress) {
    this.x = x;
    this.y = y;
    this.dress = dress;
  }

  void show() {
    fill(dress);
    ellipse(x, y, 100, 100);
  }

  void move(float destinationX, float destinationY) {
    //if (x < width/2 && y != height/2) {
      x += (destinationX-x)/100;
      y += (destinationY-y)/100;
    //}
    
  }
}
