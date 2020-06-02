
Rectangle main;
Rectangle[] parts = new Rectangle[4];
Rectangle background;
void setup() {
  size(400, 400);
  colorMode(HSB);

  main = new Rectangle(30, 30, 350, 320, color(255, 255, 255, 0), 10);
  for (int i = 0; i < parts.length; i++) {
    parts[i] = new Rectangle(32, 32 + (80*i), 348, 80, color((255 / 4) * i, 200, 155), 0);
  }
  background = new Rectangle(60, width/2 - 45, 290, 80, color(0,0,255), 10);
}

void draw() {
  background(12);

  noStroke();
  for (Rectangle r : parts) {
    if (frameCount % 15 == 0) {
      r.update();
    }
    r.show();
  }

  stroke(255);
  main.show();

  background.show();

  stroke(255);
  strokeWeight(3);
  fill(0);
  textSize(48);
  textAlign(CENTER, CENTER);
  text("Loading...", width/2 + 15, height/2 -15);
  
  saveFrame("fr-####.png");
  
  if (frameCount > 120) {
    exit();
  }
}
