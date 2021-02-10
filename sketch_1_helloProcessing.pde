void drawNameWithLines ()
{
  // insert your code here to draw the letters of your name 
  // using only lines()
  line (182, 50, 116, 50);
  line(116, 50, 50, 130);
  line(50, 130, 50, 370);
  line(50, 370, 116, 450);
  line(116, 450, 182, 450);
  line(182, 450, 182, 420);
  line(182, 420, 132, 420);
  line(132, 420, 80, 360);
  line(80, 360, 80, 140);
  line(80, 140, 123, 80);
  line(123, 80, 182, 80);
  line(182, 80, 182, 50);
  
  int mx = 300;
  int my = 50;
  
  line(mx, my, mx, my + 400);
  line(mx, my + 400, mx + 30, my + 400);
  line(mx + 30, my+400, mx + 30, my + 112);
  line(mx + 30, my + 112, mx + 57, my + 370);
  line(mx + 57, my + 370, mx + 84, my + 112);
  line(mx + 84, my + 112, mx + 84, my + 400);
  line(mx + 84, my + 400, mx + 114, my + 400);
  line(mx + 114, my + 400, mx + 114, my);
  line(mx + 114, my, mx + 84, my);
  line(mx + 84, my, mx + 57, my + 250);
  line(mx + 57, my + 250, mx + 30, my);
  line(mx + 30, my, mx, my);
  
  
  
}

void drawNameWithTriangles ()
{
  // insert your code here to draw the letters of your name 
  // using only ltriangles()
  triangle (181, 51, 181, 79, 122, 79);
  triangle (117, 51, 122, 79, 181, 51);
  triangle (117, 51, 122, 79, 79, 139);
  triangle (117, 51, 79, 139, 51, 129);
  triangle (51, 129, 79, 139, 79, 359);
  triangle(51, 129, 79, 359, 51, 369);
  triangle(51, 369, 79, 359, 115, 449);
  triangle(79, 359, 115, 449, 122, 419);
  triangle(122, 419, 115, 449, 181, 449);
  triangle (122, 419, 181, 419, 182, 449);
 
  
  int mx = 301;
  int my = 51;
  
  triangle(mx, my, mx + 28, my, mx, my + 398 );
  triangle(mx + 28, my, mx, my + 398, mx + 28, my + 398);
  triangle(mx + 30, my +1 , mx + 30, my + 109, mx + 54, my + 251);
  triangle(mx + 31, my + 109, mx + 54, my + 251, mx + 56, my + 368);
  triangle(mx + 82, my + 109, mx + 54, my + 251, mx + 56, my + 368);
  triangle(mx + 82, my + 109, mx+  84, my + 1, mx + 57, my + 251);
  triangle(mx + 84, my+1, mx + 84, my + 398, mx + 112, my + 1);
  triangle(mx + 112, my +1, mx + 112, my + 398, mx + 84, my + 398);
  
  
  
  
}

// --------------------------------------------------------------------------------------------
//
//  Do not edit below this lne
//
// --------------------------------------------------------------------------------------------

boolean doLine = false;
boolean doTri = false;
color backgroundColor = color (150, 150, 150);
color lineColor = color (0, 0, 0);
color fillColor = color (255, 0, 0);

void setup () 
{
  size (500, 500);
  background (backgroundColor);
}

void draw ()
{
  if (doLine) stroke(lineColor); else stroke (backgroundColor);
  drawNameWithLines();
  
  if (doTri) {
     fill(fillColor);
     stroke(fillColor);
  }
  else {
    fill(backgroundColor);
    stroke(backgroundColor);
  }
  drawNameWithTriangles();
}

void keyPressed()
{
  if (key == 'l') doLine = !doLine;
  if (key == 't') doTri = !doTri;
  if (key == 'q') exit();
}
