int step = 6;
int altezza = 100;
int larghezza = 100;
PImage immagine;
int colore =255, colore2 = 255;
int colore3 = 255, colore4 = 255;

void setup() {
  fullScreen();
 immagine = loadImage("casa.jpg");
}

void draw() {
  background(255);
  fill(150,0,0);
  rect(larghezza, altezza, 100,100);
  //Buttons
  fill (255);
  fill (colore);
  rect (width / 2 + 50, height*3 / 4 + 90, 150, 100);
  fill (colore2) ;
  rect (width / 2 - 200, height*3 / 4 + 90, 150, 100);
  fill (colore3) ;
  rect (width / 2 - 75, height /1.127, 150, 100);
  fill (colore4) ;
  rect (width / 2 - 75, height - 380, 150, 100);
  //Player
  immagine.resize(300,300);
  image(immagine, 300, 500) ;
  //Right
  if (mousePressed && mouseX >= width / 2 +50 && mouseX <= width / 2 +270 && mouseY >= height*3 / 4 + 90 && mouseY <= height*3 / 4 + 190) {
    larghezza +=step;
    colore = (200);
  } 
  else{
    colore = 255;
  }
  //Left
  if (mousePressed && mouseX >= width / 2 - 270 && mouseX <= width / 2 - 50 && mouseY >= height*3 / 4 + 90 && mouseY <= height*3 / 4 + 190) {
    larghezza -= step;
  colore2 = (200);
  } 
  else{
    colore2 = 255;
   } 
  //Down
  if (mousePressed && mouseX >= width / 2 - 75 && mouseX <= width / 2 +75 && mouseY >= height - 200 && mouseY <= height - 30) {
    altezza +=step;
   colore3 = (200);
  } 
  else{
    colore3 = 255;
   } 
  //Up
  if (mousePressed && mouseX >= width / 2 - 75 && mouseX <= width / 2 +75 && mouseY >= height - 420 && mouseY <= height - 280) {
    altezza -=step;
   colore4 = (200);
  } 
  else{
    colore4 = 255;
   } 
}
