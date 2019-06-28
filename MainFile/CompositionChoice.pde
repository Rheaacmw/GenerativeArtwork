// This function creates a page for the user to choose the composition they want to use
void compositionChoice() {
  
  // declare backgroung color (black)
  H.init(this).background(#000000);
  
  // Load in png image of prompt
  HImage prompt = new HImage("chooseCompositionPrompt.png");
  // Center the image
  prompt
    .anchorAt(H.CENTER)
    .loc(width/2, 250);
  H.add(prompt);

  // Image Placement Variables 
  int col1 = 280;
  int col2 = 620; 
  int row1 = 500; 
  int row2 = 630;
  
  // Load in png image of randomLayout
  HImage random = new HImage("randomLayout.png");
  // Center the image
  random
    .anchorAt(H.CENTER)
    .loc(col1, row1)
    .size(300, 84);
  H.add(random);
  
  // Load in png image of gridLayout
  HImage grid = new HImage("gridLayout.png");
  // Center the image
  grid
    .anchorAt(H.CENTER)
    .loc(col2, row1)
    .size(300, 84);
  H.add(grid);
  
  // Load in png image of shapeLayout
  HImage shape = new HImage("shapeLayout.png");
  // Center the image
  shape
    .anchorAt(H.CENTER)
    .loc(col1, row2)
    .size(300, 84);
  H.add(shape);
  
  // Load in png image of pixelLayout
  HImage pixel = new HImage("pixelLayout.png");
  // Center the image
  pixel
    .anchorAt(H.CENTER)
    .loc(col2, row2)
    .size(300, 84);
  H.add(pixel);
  
  // -------- Set Button Triggers --------
    
  boolean overButton1 = false;
  boolean overButton2 = false;
  boolean overButton3 = false;
  boolean overButton4 = false;
  
  // if mouse is over button1, its size gets bigger and overButton1 = true
  if( ( (mouseX > (col1 - 300/2))  && (mouseX < (col1 + 300/2)) )  &&  ( (mouseY > (row1 - 84/2)) && (mouseY < (row1 + 84/2)) ) ) {
             random.scale(1.2);
             overButton1 = true; 
   }
  // if mouse is over button2, its size gets bigger and overButton1 = true
  if( ( (mouseX > (col2 - 300/2))  && (mouseX < (col2 + 300/2)) )  &&  ( (mouseY > (row1 - 84/2)) && (mouseY < (row1 + 84/2)) ) ) {
             grid.scale(1.2);
             overButton2 = true; 
   }
  // if mouse is over button2, its size gets bigger and overButton1 = true
  if( ( (mouseX > (col1 - 300/2))  && (mouseX < (col1 + 300/2)) )  &&  ( (mouseY > (row2 - 84/2)) && (mouseY < (row2 + 84/2)) ) ) {
             shape.scale(1.2);
             overButton3 = true; 
   }
  // if mouse is over button2, its size gets bigger and overButton1 = true
  if( ( (mouseX > (col2 - 300/2))  && (mouseX < (col2 + 300/2)) )  &&  ( (mouseY > (row2 - 84/2)) && (mouseY < (row2 + 84/2)) ) ) {
             pixel.scale(1.2);
             overButton4 = true; 
   }
   
  // -------- Set Button Outputs --------
  
  // If a button is pressed, the next page appears and the user chooses the corresponding layout
  if (mousePressed) {
    if(overButton1) {
      // set layout to random
      layout = 'r';
      compositionChoiceState = false;
      outputState = true;
    }
    if(overButton2) {
      // set layout to grid
      layout = 'g';
      compositionChoiceState = false;
      outputState = true;
    }
    if(overButton3) {
      // set layout to shape
      layout = 's';
      compositionChoiceState = false;
      outputState = true;
    }
    if(overButton4) {
      // set layout to pixel
      layout = 'p';
      compositionChoiceState = false;
      outputState = true;
    }
  }
  
  H.drawStage();
  H.remove(prompt);
  H.remove(random);
  H.remove(grid);
  H.remove(shape);
  H.remove(pixel);
  
}