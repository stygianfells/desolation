
void jug() {
  background(0);

  //buttons of fate
  strokeWeight(3);
  stroke(255, 100);
  noFill();
  rect(200, 350, 200, 75);
  rect(width-400, 350, 200, 75);
  textSize(30);
  text("MATCH", 300, 390);
  text("NO MATCH", 700, 390);

  //to match or not to match
  fill(colours[colour]);
  textSize(70);
  text(words[word], width/2, height/2-75);

  //hourglass
  fill(255, 100);
  noStroke();
  rect(0, height-20, ticker*4, 20);

  //keep score
  textSize(25);
  fill(255);
  text("score: "+score, width/2-200, 50);
  text("high score: "+hi, width/2+200, 50);

  if (colour==word) parity=true;
  else parity=false;

  if (ticker>=width/4 || parity==true && inpute==2 || parity==false && inpute==1) {
    mode = die;
  } else if (ticker < width/4 && parity==true && inpute==1 || ticker<width/4 && parity==false && inpute==2) {
    reset();
  }
  ticker++;
}

void reset() {
  ticker=0;
  inpute=0;

  //50-50
  word=int(random(0, 6));
  colour=int(random(0, 6));
  random=random(0, 2);
  if (random<1) {
    word=int(random(0, 6));
    colour=word;
  }
  else if (random>1) {
    colour=int(random(0, 6));
  }

  //numbers
  score++;
  if (score>hi) hi=score;
}
