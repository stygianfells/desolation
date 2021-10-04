
void mouseReleased() {
  if (mode==title) mode = playing;
  else if (mode==die) mode = title;

  //taking inpute (don't ask)
  if (mode==playing) {
    if (mouseX>200 && mouseX<400 && mouseY>350 && mouseY<425) inpute=1;
    else if (mouseX>600 && mouseX<800 && mouseY>350 && mouseY<425) inpute=2;
  }
}
