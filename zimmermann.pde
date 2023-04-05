//I decided to do the Project B: Platform Banner. 
/*  
I made up a Netflix crime series called  "Partly Criminal"  which is about 
a mysterious murder where there are no suspects. However, later a suspect 
is found and surprisingly they are involved in this murder without them noticing. 

Therefore the design of my banner revolves around the idea that the suspect 
is both innocent and guilty which is symbolized by the face of the figure 
that is half-white and half-black. Additionally, I decided to do a minimal design 
that is overall inspired by the other Netflix banners.

Moreover, the interaction happens when you click on the "watch now" box. You come across 
an animation where some body parts of the figure change from black to white which again 
points out the innocence of the suspect, however, ends up with a black and white 
prisoner outfit which also shows their guilty side.
*/


//__THE VARIABLES__
/* 
This boolean variable is set to create the animation when you 
click on the "watch now" box. It is set as "false" to prevent the animation 
before clicking the box. After you click on the box this variable turns to "true"
which enables the animation!
*/
  boolean move=false;

  //variables to determine the location of the figure's shapes
  float y= 301.5188;
  float x= 559.2226;

//VARIABLES FOR THE ANIMATED BLOCKS (THE BODY PARTS OF THE FIGURE)
/* 
These two variables (float x1 and float x2) have the same value as "float x". 
However to apply the animation only on the blocks on the figure's body, 
I gave two different variables for this value. 
*/
  //location for the blocks that go to left 
  float x1=559.2226;
  
  //location for the blocks that go to right
  float x2=559.2226;
  
  //blocks' width and height 
  float rectw=210.0185;
  float recth=43.8526;
  
  //this variable is set to prevent a design flaw 
  float recthb=44.8526;

//VARIABLES FOR THE TEXT
  PFont font1,font2,font3;
  String a="PARTLY ";
  String b="CRIMINAL";
  String c="A NETFLIX ORIGINAL SERIES";
  String d="WATCH NOW";

//VARIABLES FOR THE TEXT IN THE PROCESSING CONSOLE
//added to see what is value is printed on the console
  String pa="float x's and float y's values";
  String pb="values of the blocks that go to left";
  String pc="values of the blocks that go to right";
  String pd="width and height of the blocks";
  String pe="value of boolean move";
  
  
void setup() {
  size(800, 500);
  noStroke();
  rectMode(CENTER);
  
//BACKGROUND 
  //It is in two different shades of red to balance the banner:
  //first shade
  background(128,0,0);
  //second shade
  fill(139,0,0);
  rect(400,138.8363,800,277.6726);
  
//TEXTS
  //fonts
  font1 = loadFont("BasicGothicPro-Bold-120.vlw");
  font2 = loadFont("HelveticaNeue-Light-20.vlw");
  font3 = loadFont("Helvetica-Bold-40.vlw");
  
  //attributes for the text "PARTLY"
  fill(255,250,250);
  textFont(font1);
  textSize(65);
  text(a, 60, 102.4);
  
  //attributes for the text "CRIMINAL"
  fill(255,250,250);
  textFont(font1);
  textSize(50);
  text(b, 60, 167.4);
  
  //attributes for the text " NETFLIX ORIGINAL SERIES"
  fill(255,250,250);
  textFont(font2);
  textSize(13);
  text(c, 100, 202.4);
  
  //the line seperates the words "partly" and "criminal" 
  //this is added for the visual balance and to reinforce the main idea of the show.
  fill(255,250,250);
  rect(185,117.34,270,4);
  
  //the box for the "watch now" text and for the animation
  fill(255,0,0);
  rect(119.6318,452.586,177.3671,44.9343);
  //attributes for the text "watch now"
  fill(255,250,250);
  textFont(font3);
  textSize(20);
  text(d, 53, 460);
}


void draw() {
//THE FIGURE'S CODES
  //middle part of the figure that connects the head and the body
  fill(0);
  ellipse(x,277.9568,209.0111,215.5373);
  
  //the head of the figure
  fill(0);
  ellipse(555.62, 117.34, 152, 152);
  fill(255,250,250);
  arc(555.62, 117.34, 152, 152, radians(90), radians(270), CHORD);
  
  //the body of the figure  
  for (float y =301.5188 ; y < 800; y = y+44) {
  fill(0);
  rect(x,y,rectw,recthb);
  }
   
/*  
This if statement is for the animation when it is activated by the boolean move 
variable that is coded to true after the "watch now" box is clicked.
*/ 
  if (move==true) { 
    /*  
    This part is the copy-pasted from the void setup and void draw part to 
    have the same design when the box is clicked.
    */ 
    noStroke();
    //background
    background(128,0,0);
    fill(139,0,0);
    rect(400,138.8363,800,277.6726);
    
    //the middle part of the figure
    fill(0);
    ellipse(x,277.9568,209.0111,215.5373);
    
    //the head of the figure
    fill(0);
    ellipse(555.62, 117.34, 152, 152);
    fill(255,250,250);
    arc(555.62, 117.34, 152, 152, radians(90), radians(270), CHORD);
    
    //the white part of the body that is revealed after the animation
    for (float y =301.5188 ; y < 500; y = y+44) {
    fill(255,250,250);
    rect(x,y,rectw,recth);
    }
    
    //texts
    fill(255,250,250);
    rect(185,117.34,270,4);
    
    fill(255,250,250);
    textFont(font1);
    textSize(65);
    text(a, 60, 102.4);
     
    fill(255,250,250);
    textFont(font1);
    textSize(50);
    text(b, 60, 167.4);
    
    fill(255,250,250);
    textFont(font2);
    textSize(13);
    text(c, 100, 202.4);
    
    //"watch now" box
    fill(255,0,0);
    rect(119.6318,452.586,177.3671,44.9343);
    
    fill(255,250,250);
    textFont(font3);
    textSize(20);
    text(d, 53, 460);
    
//THE CODES FOR THE ANIMATION OF THE BLOCKS
   //for blocks to go left
    x1=x1-1;
    fill(0);
    rect(x1,y,rectw,recthb);
    rect(x1,y+88,rectw,recthb);
    rect(x1,y+176,rectw,recthb);
    //for blocks to go right
    x2=x2+1;
    fill(0);
    rect(x2,y+44,rectw,recthb);
    rect(x2,y+132,rectw,recthb);
  
  //end of if statement for the animation
  } 
  
//this if statements below are set to stop the blocks to go further in the animation
  //to stop the blocks that go to left
  if (x1<454.21){
  x1=454.21; //to stop when the block reaches to this value
  rect(x1,y,rectw,recthb);
  }
  //to stop the blocks that go to right
  if(x2>660.63){
  x2=660.63; //to stop when the block reaches to this value
  }
  
//CODE TRACING
  //values of the width and height of the moving blocks
  println(pd);
  println(rectw+recth);
  //values of float x and float y
  println(pa);
  println(x);
  println(y);
  //values of the coordinates when the blocks move or stay still
  println(pb);
  println(x1);
  println(pc);
  println(x2);
  //value of the boolean move variable
  println(pe);
  println(move);
  //value of the coordinates where your mouse is
  println(mouseX+mouseY);
 
//end of void draw  
}


/* 
This is the part where I set the code to enable the animation when you 
click on the "watch now" box. This is possible by turning the boolean move variable 
into true when the mouse is pressed with the help of the if statement and void mousePressed.
Additionally, I limited the area to be interacted with when the mouse is pressed, 
considering the size of the box by using the if statement.
*/
void mousePressed() {
 if((30<mouseX)&&(mouseX<212)&&(mouseY<480)&&(mouseY>430)){
   move = true;
  
   //This code below is to enable a little animation to see that you click on the box!
   fill(0);
   rect(119.6318,452.586,177.3671,44.9343);
 }
}
