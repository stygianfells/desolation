
void death() {
  background(0);

  //formalities
  fill(255);
  textSize(70);
  text("OOPSIES :(", width/2, height/2-100);
  textSize(50);
  text("CLICK TO PLAY AGAIN", width/2, height/2);

  //stats
  textSize(25);
  text("score: "+score, width/2-200, 50);
  text("high score: "+hi, width/2+200, 50);

  //less of a formality
  colour=int(random(0, 6));
  textSize(50);
  fill(colours[colour]);
  text("--. . -  ..-. ..- -.-. -.- . -..", width/2, height-75);
}
