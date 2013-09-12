void setup(){
  
  size(300, 300);        //set background
  background(255,218,5);
  
}

void draw(){
  
  int x = width/2;       // set the centre of the circles
  int y = height/2; 
  
  int h = hour();        // set the time variables
  int m = minute();
  int s = second();
  
  smooth();
  noStroke();
  
  fill(255,255,255);
  arc(x, y, 280, 280, radians(0), map(h,0,23,radians(0),radians(h*60))); //draw the Hour circle
  
  fill(188,188,188);
  arc(x, y, 120, 120, radians(0), map(m,0,59,radians(0),radians(m*6)));  //draw the Minute circle
  
  fill(0,0,0);
  arc(x, y, 80, 80, radians(0), map(s,0,59,radians(0),radians(s*6)));    //draw the Second circle
  
  println(hour());
  println(minute());
  println(second());

}

/* 
   PROBLEMS WORKING ON IT:
   1. Not sure about what the map() means and how to set each of the Parameters in this case;
   
   2. When second() back to 0 when finishing a circle, 
   
      (1)the drawing cannot refresh to draw a new circle from the biginning,
         it keep layering on the existing drawing which remains a solid color;
      
      (2)the layer order of the 3 circles has bugs which I've no idea why;
   
   3. If I change the opacity of each circle, some bugs happen (about the layer order);
*/
