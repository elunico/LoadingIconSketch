class Rectangle {
  float x, y, w, h, rounding;
  color c;

  Rectangle(float x, float y, float w, float h, color c, float rounding) {
    this.x = x; 
    this.y = y;
    this.h = h;
    this.w = w;
    this.c = c;
    this.rounding = rounding;
  }

  void update() {
    
    if (this.y + this.h > 350) {
      this.y = 32;
    } else {
      this.y += this.h; 
      //this.y += 1;
    }
  }

  void show() {
    fill(c);
    rect(this.x, this.y, this.w, this.h, this.rounding);
  }
}
