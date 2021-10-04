
//Elaine Yang Sep.22.21 Prog 12

//legend speaks of a series of commented hex codes under the colour var declarations
//that, if implemented as the values for the colour variables,
//would make the game almost impossible to play
//feel free to ah
//tempt fate
//lol

//ALSO please don't press restart with your mouse in the place where the true and false
//buttons were
//for some reason it glitches you to the death mode
//anywhere else should work fine

String[] words;
color[] colours; 
PImage[] gif;

int mode = 0, ticker = 0, word = 0, colour = 0, inpute = 0, score = 0, hi = 0, f = 0, frames = 9;
final int title = 0, playing = 1, die = 2;
float random;
boolean parity; 
PFont blam;

color green = #2CF071, blue = #2CDEF0, grey = #BCBCBC;
color white = #FFFFFF, pink = #FC6ED9, purple = #D450F0;
//green #17E3D9, blue #17DEE3, grey #FAFAFA
//white #FFFFFF, pink #E84DD9, purple #CE4FC8
String sgreen = "TOTALLY GREEN", sblue = "IS IT BLUE", sgrey = "GREY?";
String swhite = "WHITE", spink = "MUCH PINK", spurple = "PURPLEHAPS";

void setup() {
  size(1000, 600);

  colours=new color[7];
  words=new String[7];
  colours[0]=green;
  colours[1]=blue;
  colours[2]=grey;
  colours[3]=white;
  colours[4]=pink;
  colours[5]=purple;
  words[0]=sgreen;
  words[1]=sblue;
  words[2]=sgrey;
  words[3]=swhite;
  words[4]=spink;
  words[5]=spurple;

  word=int(random(0, 6));
  colour=int(random(0, 6));
  random=random(0, 2);

  blam = createFont("Butler_Regular.otf", 100);
  gif = new PImage[9];
}

void draw() {
  if (mode == title) intro();
  else if (mode == playing) jug();
  else if (mode == die) death();
}
