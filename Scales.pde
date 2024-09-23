float a = 0;
int b = 0;
int c = 0;
int count = 0;

//actual drawing
void draw() {
while (count == 0){
//for loops - number and overlapping of hair
for (int y = 350; y >= 0; y = y - 50){
for (float d = 0; d < 80; d = d + 0.5){
scale(d,y);
count++;
}
}
}
}

void scale (float x,int y){
//randomization
  a = (float)((Math.random()*10)-5);
  b = (int)(220-(Math.random()*125));
  c = (int)((Math.random()*50)-25)+y;
//color
  fill(b,b,b);
  noStroke();
//hair shape + location
  beginShape();
  curveVertex((x*5),c);
  curveVertex((x*5),c);
  curveVertex(2.5+(a/2.0)+(x*5),c+90);
  curveVertex(2.5+a+(x*5),c+90);
  curveVertex(2.5+(a/-2.0)+(x*5),c+90);
  curveVertex(5+(x*5),c);
  curveVertex(5+(x*5),c);
  endShape();
}
