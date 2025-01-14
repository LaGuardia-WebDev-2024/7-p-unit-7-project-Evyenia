//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var redSize=20;
var blueSize=35;
var blackSize=130;
var circleSize=20;
var littleSize=20;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
  
  
  
  //red 
  fill(227, 19, 5);
strokeWeight(1);
  rect(245, redSize, 42.5, 42.5);
  if(redSize<197){
  redSize = redSize + 1.05;
  }
  
  //blue
  fill(18, 25, 227);
strokeWeight(1);
rect(290.5, blueSize, 42.5, 135);
  if(blueSize<150){
  blueSize = blueSize + .70;
  }
  
  //black
  fill(38, 35, 79);
strokeWeight(1);
if(blueSize>150){
rect(245, blackSize, 89, 290);
}
//grid
fill(39, 40, 77);
strokeWeight(1);
  line(248,242,332,242);
  line(248,198,332,198);
  line(248,288,332,288);
   line(248,332,332,332);
    line(248,378,332,378);
    line(290,153,290,394);
    
    //little circle
  fill(200,388,160);
  ellipse(35,49,mouseX,mouseY);
  
  
  if(blackSize<150){
  blackSize = blackSize + .55;
  }
  x=mouseX;
  y=mouseY;
  //expanding element 
  rect(8,8,circleSize,2);
  circleSize=circleSize+1;
  littleSize=littleSize+1;
  
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
