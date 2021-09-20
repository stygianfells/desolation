
void setup(){
  size(1000, 600);
  
  String[] words = new String[7];
  color[] colour = new color[7];
  
  int mode;
  final int title = 0, tutorial = 1, playing = 2, die = 3;
  
  color green = #17E3D9, blue = #17DEE3, grey1 = #FFFFFF;
  color grey = #000000, pink = #E84DD9, purple = #CE4FC8;
  String sgreen = "TOTALLY GREEN", sblue = "IS IT BLUE", sgrey1 = "GREY?";
  String sgrey = "(MORALLY) GREY", spink = "MUCH PINK", spurple = "PURPLEHAPS";
}

void draw() {
  background(0);
  
  strokeWeight(3);
  stroke(255, 100);
  line(width/2, 0, width/2, height);
}
