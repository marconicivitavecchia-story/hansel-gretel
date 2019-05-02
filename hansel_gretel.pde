Personaggio hansel, gretel, witch;

void setup() {
  fullScreen();
  noStroke();

  hansel = new Personaggio(100, height/2+300, #0000FF);
  gretel = new Personaggio(100, height/2-300, #F989FF);
  witch = new Personaggio(width/2+20, height/2, #313B08);
}
void draw() {
  background(#047E13);

  hansel.move(width/2+50, height/2);
  gretel.move(width/2+50, height/2);
  witch.move(width-150, height/2-150);
  hansel.show();
  gretel.show();
  witch.show();

  fill(0);
  /*casa*/  rect(width/2-20, height/2-100, 200, 200);
}
