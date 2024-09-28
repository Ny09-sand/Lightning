

public void setup() {
  size(1000,1000);


}

int x= (int)(Math.random()*25);
int y= (int)(Math.random()*100)-100; 
int oldx=0; 
int oldy=0; 

public void draw() {
    background(0); 
    stroke(200,255,155); 
}
void mousePressed() {
  if (mousePressed) {
    oldx = mouseX;
    oldy = 0;
    while((0.85 *(mouseY - oldy)) > 80) {
      x = (int)(mouseX + Math.random()* 300)-150;

      y = (int)(mouseY - ((mouseY - oldy) * 0.85));
      stroke(200,255,155); 
      strokeWeight(10); 
      line(oldx, oldy, x, y);
    
      oldx = x;
      oldy = y;
    }
    line(oldx, oldy, mouseX, mouseY);
  }
}
