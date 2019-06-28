// This function provides a page for the user to choose the motif they want to use in their artwork
void motifChoice() {
  
  // declare backgroung color (black)
  H.init(this).background(#000000);
  
  // Variables for location of buttons
  int col1X = 150; 
  int col2X = 350; 
  int col3X = 550;
  int col4X = 750; 
  
  int row1Y = 500;
  int row2Y = 700;
  
  // -------- Set up Screen --------
  
  // Load in black background
  HShape background = new HShape("CREATEbackground.svg");
  // Center the image
  background
    .anchorAt(H.CENTER)
    .loc(width/2, height/2)
    .size(900);
  H.add(background);
  
  // Load in png image of prompt
  HImage prompt = new HImage("chooseMotifPrompt.png");
  // Center the image
  prompt
    .anchorAt(H.CENTER)
    .loc(width/2, 200);
  H.add(prompt);
  
  // Load in png image of triangleMotif
  HImage triangle1 = new HImage("triangleMotif.png");
  // Center the image
  triangle1
    .anchorAt(H.CENTER)
    .loc(col1X, row1Y)
    .size(150);
  H.add(triangle1);
  
  // Load in png image of circleMotif
  HImage circle = new HImage("circleMotif.png");
  // Center the image
  circle
    .anchorAt(H.CENTER)
    .loc(col2X, row1Y)
    .size(150);
  H.add(circle);
  
  // Load in png image of twistedTriangleMotif
  HImage triangle2 = new HImage("twistedTriangleMotif.png");
  // Center the image
  triangle2
    .anchorAt(H.CENTER)
    .loc(col3X, row1Y)
    .size(150);
  H.add(triangle2);
  
  
  // Load in png image of faceMotif
  HImage face = new HImage("faceMotif.png");
  // Center the image
  face
    .anchorAt(H.CENTER)
    .loc(col4X, row1Y)
    .size(150);
  H.add(face);
  
  // Load in png image of catMotif
  HImage cat = new HImage("catMotif.png");
  // Center the image
  cat
    .anchorAt(H.CENTER)
    .loc(col1X, row2Y)
    .size(150);
  H.add(cat);
  
  // Load in png image of birdMotif
  HImage bird = new HImage("birdMotif.png");
  // Center the image
  bird
    .anchorAt(H.CENTER)
    .loc(col2X, row2Y)
    .size(150);
  H.add(bird);
  
  // Load in png image of nudeMotif
  HImage nude = new HImage("nudeMotif.png");
  // Center the image
  nude
    .anchorAt(H.CENTER)
    .loc(col3X, row2Y)
    .size(150);
  H.add(nude);
  
  // Load in png image of squareMotif
  HImage square = new HImage("squareMotif.png");
  // Center the image
  square
    .anchorAt(H.CENTER)
    .loc(col4X, row2Y)
    .size(150);
  H.add(square);
  
  // -------- Set Button Triggers --------
    
  boolean overButton1 = false;
  boolean overButton2 = false;
  boolean overButton3 = false;
  boolean overButton4 = false;
  boolean overButton5 = false;
  boolean overButton6 = false;
  boolean overButton7 = false;
  boolean overButton8 = false;
  
  // if mouse is over button1, its size gets bigger and overButton1 = true
  if( ( (mouseX > (col1X - 150/2))  && (mouseX < (col1X + 150/2)) )  &&  ( (mouseY > (row1Y - 150/2)) && (mouseY < (row1Y + 150/2)) ) ) {
             triangle1.scale(1.2);
             overButton1 = true; 
   }
   
  // if mouse is over button2, its size gets bigger and overButton1 = true
  if( ( (mouseX > (col2X - 150/2))  && (mouseX < (col2X + 150/2)) )  &&  ( (mouseY > (row1Y - 150/2)) && (mouseY < (row1Y + 150/2)) ) ) {
             circle.scale(1.2);
             overButton2 = true; 
   }
   
  // if mouse is over button3, its size gets bigger and overButton1 = true
  if( ( (mouseX > (col3X - 150/2))  && (mouseX < (col3X + 150/2)) )  &&  ( (mouseY > (row1Y - 150/2)) && (mouseY < (row1Y + 150/2)) ) ) {
             triangle2.scale(1.2);
             overButton3 = true; 
   }
  
  // if mouse is over button4, its size gets bigger and overButton1 = true
  if( ( (mouseX > (col4X - 150/2))  && (mouseX < (col4X + 150/2)) )  &&  ( (mouseY > (row1Y - 150/2)) && (mouseY < (row1Y + 150/2)) ) ) {
             face.scale(1.2);
             overButton4 = true; 
   }
   
  // if mouse is over button5, its size gets bigger and overButton1 = true
  if( ( (mouseX > (col1X - 150/2))  && (mouseX < (col1X + 150/2)) )  &&  ( (mouseY > (row2Y - 150/2)) && (mouseY < (row2Y + 150/2)) ) ) {
             cat.scale(1.2);
             overButton5 = true; 
   }
   
  // if mouse is over button6, its size gets bigger and overButton1 = true
  if( ( (mouseX > (col2X - 150/2))  && (mouseX < (col2X + 150/2)) )  &&  ( (mouseY > (row2Y - 150/2)) && (mouseY < (row2Y + 150/2)) ) ) {
             bird.scale(1.2);
             overButton6 = true; 
   }
   
  // if mouse is over button7, its size gets bigger and overButton1 = true
  if( ( (mouseX > (col3X - 150/2))  && (mouseX < (col3X + 150/2)) )  &&  ( (mouseY > (row2Y - 150/2)) && (mouseY < (row2Y + 150/2)) ) ) {
             nude.scale(1.2);
             overButton7 = true; 
   }
   
  // if mouse is over button8, its size gets bigger and overButton1 = true
  if( ( (mouseX > (col4X - 150/2))  && (mouseX < (col4X + 150/2)) )  &&  ( (mouseY > (row2Y - 150/2)) && (mouseY < (row2Y + 150/2)) ) ) {
             square.scale(1.2);
             overButton8 = true; 
   }
   
  // -------- Set Button Outputs --------
  
  // If a button is pressed, the next page appears and the user chose the corresponding motif
  if (mousePressed) {
    if(overButton1) {
      motif = new HShape("triangleMotif.svg");
      motifChoiceState = false;
      colorChoiceState = true;
    }
    if(overButton2) {
      motif = new HShape("circleMotif.svg");
      motifChoiceState = false;
      colorChoiceState = true;
    }
    if(overButton3) {
      motif = new HShape("twistedTriangleMotif.svg");
      motifChoiceState = false;
      colorChoiceState = true;
    }
    if(overButton4) {
      motif = new HShape("faceMotif.svg");
      motifChoiceState = false;
      colorChoiceState = true;
    }
    if(overButton5) {
      motif = new HShape("catMotif.svg");
      motifChoiceState = false;
      colorChoiceState = true;
    }
    if(overButton6) {
      motif = new HShape("birdMotif.svg");
      motifChoiceState = false;
      colorChoiceState = true;
    }
    if(overButton7) {
      motif = new HShape("nudeMotif.svg");
      motifChoiceState = false;
      colorChoiceState = true;
    }
    if(overButton8) {
      motif = new HShape("squareMotif.svg");
      motifChoiceState = false;
      colorChoiceState = true;
    }
  }
  
  H.drawStage();
  H.remove(prompt);
  H.remove(triangle1);
  H.remove(circle);
  H.remove(triangle2);
  H.remove(face);
  H.remove(cat);
  H.remove(bird);
  H.remove(nude);
  H.remove(square); 
}