
void intro() {
  background(0);

  //gif
  int i = 0;
  while (i < 9) {
    gif[i] = loadImage("frame_"+i+"_delay-0.01s.gif");
    i++;
  }
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == frames) f = 0;

  //fanfare
  fill(0);
  rect(200, 150, 600, 100);
  rect(385, 325, 225, 50);
  textFont(blam);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(70);
  text("COLOUR MATCH", width/2, height/2-100);
  textSize(30);
  text("CLICK TO PLAY", width/2, height/2+50);

  //logistics
  ticker=0;
  score=0;
  inpute=0;
}
