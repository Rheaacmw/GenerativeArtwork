// This function creates a page for the user to choose the color palette they want to use
void colorChoice() {
    
  // declare backgroung color (black)
  H.init(this).background(#000000);
  
  // Image Placement Variables 
  int col1 = 225;
  int col2 = 450; 
  int col3 = 675;
  int row1 = 150; 
  int row2 = 350;
  
  // -------- Set up Screen --------
  
  // Load in png image of prompt
  HImage prompt = new HImage("choosePalettePrompt.png");
  // Center the image
  prompt
    .anchorAt(H.CENTER)
    .loc(width/2, 630);
  H.add(prompt);
  
  // Load in png image of color Palette 1
  HImage palette1 = new HImage("palette1.png");
  // Center the image
  palette1
    .anchorAt(H.CENTER)
    .loc(col1, row1)
    .size(150);
  H.add(palette1);
  
  // Load in png image of color Palette 2
  HImage palette2 = new HImage("palette2.png");
  // Center the image
  palette2
    .anchorAt(H.CENTER)
    .loc(col2, row1)
    .size(150);
  H.add(palette2);
  
  // Load in png image of color Palette 3
  HImage palette3 = new HImage("palette3.png");
  // Center the image
  palette3
    .anchorAt(H.CENTER)
    .loc(col3, row1)
    .size(150);
  H.add(palette3);
  
  // Load in png image of color Palette 4
  HImage palette4 = new HImage("palette4.png");
  // Center the image
  palette4
    .anchorAt(H.CENTER)
    .loc(col1, row2)
    .size(150);
  H.add(palette4);
  
  // Load in png image of color Palette 5
  HImage palette5 = new HImage("palette5.png");
  // Center the image
  palette5
    .anchorAt(H.CENTER)
    .loc(col2, row2)
    .size(150);
  H.add(palette5);
  
  // Load in png image of color Palette 6
  HImage palette6 = new HImage("palette6.png");
  // Center the image
  palette6
    .anchorAt(H.CENTER)
    .loc(col3, row2)
    .size(150);
  H.add(palette6);
  
  // -------- Set Button Triggers --------
    
  boolean overButton1 = false;
  boolean overButton2 = false;
  boolean overButton3 = false;
  boolean overButton4 = false;
  boolean overButton5 = false;
  boolean overButton6 = false;
  
  // if mouse is over button1, its size gets bigger and overButton1 = true
  if( ( (mouseX > (col1 - 150/2))  && (mouseX < (col1 + 150/2)) )  &&  ( (mouseY > (row1 - 150/2)) && (mouseY < (row1 + 150/2)) ) ) {
             palette1.scale(1.2);
             overButton1 = true; 
   }
  // if mouse is over button2, its size gets bigger and overButton2 = true
  if( ( (mouseX > (col2 - 150/2))  && (mouseX < (col2 + 150/2)) )  &&  ( (mouseY > (row1 - 150/2)) && (mouseY < (row1 + 150/2)) ) ) {
             palette2.scale(1.2);
             overButton2 = true; 
   }
  // if mouse is over button3, its size gets bigger and overButton3 = true
  if( ( (mouseX > (col3 - 150/2))  && (mouseX < (col3 + 150/2)) )  &&  ( (mouseY > (row1 - 150/2)) && (mouseY < (row1 + 150/2)) ) ) {
             palette3.scale(1.2);
             overButton3 = true; 
   }
  // if mouse is over button4, its size gets bigger and overButton4 = true
  if( ( (mouseX > (col1 - 150/2))  && (mouseX < (col1 + 150/2)) )  &&  ( (mouseY > (row2 - 150/2)) && (mouseY < (row2 + 150/2)) ) ) {
             palette4.scale(1.2);
             overButton4 = true; 
   }
  // if mouse is over button5, its size gets bigger and overButton5 = true
  if( ( (mouseX > (col2 - 150/2))  && (mouseX < (col2 + 150/2)) )  &&  ( (mouseY > (row2 - 150/2)) && (mouseY < (row2 + 150/2)) ) ) {
             palette5.scale(1.2);
             overButton5 = true; 
   }
  // if mouse is over button6, its size gets bigger and overButton6 = true
  if( ( (mouseX > (col3 - 150/2))  && (mouseX < (col3 + 150/2)) )  &&  ( (mouseY > (row2 - 150/2)) && (mouseY < (row2 + 150/2)) ) ) {
             palette6.scale(1.2);
             overButton6 = true; 
   }
   
  // -------- Set Button Outputs --------
  
  // If a button is pressed, the next page appears and the user chose the corresponding color palette
  if (mousePressed) {
    if(overButton1) {
      // set color palatte of first button: blues and pinks
      colors = new HColorPool(#3700e1, #3d00ff, #3d00a5, #ffbbce, #ed7ab4, #e5c0d7);
      colorChoiceState = false;
      compositionChoiceState = true;
    }
    if(overButton2) {
      // set color palatte of second button: blue, purple, red, yellow, green, pink, grey
      colors = new HColorPool(#32aebe, #9d4e96, #f23800, #e1ee1a, #00ad82, #eb2e65, #413c3b);
      colorChoiceState = false;
      compositionChoiceState = true;
    }
    if(overButton3) {
      // set color palatte of third button: turquoise, sea-foam green, lavender, dark lavender, pink/purple, pink, baby blue, white
      colors = new HColorPool(#5fffff, #60fab8, #b08ff1, #564c9a, #ff64e5, #fc0a7e, #65a0ff, #feffff);
      colorChoiceState = false;
      compositionChoiceState = true;
    }
    if(overButton4) {
      // set color palatte of fourth button: blue, dark blue, red, lavender, white
      colors = new HColorPool(#4100ff, #4100ff, #4000eb, #ff0000, #7e6be8, #ffffff);
      colorChoiceState = false;
      compositionChoiceState = true;
    }
    if(overButton5) {
      // set color palatte of fifth button: grayscale and red
      colors = new HColorPool(#f0f0f0, #bcbcbc, #8f8f8f, #777777, #464646, #292929, #0f0f0f, #fa2a1b);
      colorChoiceState = false;
      compositionChoiceState = true;
    }
    if(overButton6) {
      // set color palatte of sixth button: dark purple, purple, light pink, pink, dark blue, blue, white
      colors = new HColorPool(#410064, #7d00bb, #ff3dee, #ff03fb, #4606fd, #02eaff, #ffffff);
      colorChoiceState = false;
      compositionChoiceState = true;
    }
  }
  
  
  H.drawStage();
  H.remove(prompt);
  H.remove(palette1);
  H.remove(palette2);
  H.remove(palette3);
  H.remove(palette4);
  H.remove(palette5);
  H.remove(palette6);
}
  