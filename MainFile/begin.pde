// This function is called for the first page of the application
void begin() {
  
  // Set up first page
  
  // declare backgroung color (black)
  H.init(this).background(#000000);
  
  // Load in background png image of text "CREATE"
  HImage textImage = new HImage("HomePageFinal.png");
  // Center the image
  textImage
    .anchorAt(H.CENTER)
    .loc(width/2, height/2);
  H.add(textImage);
  H.remove(textImage); // only have textImage for one frame to start layering the triangles
  
  // Assign ShapeLayout to sketch; shapes will attach to non-transparent pixels in loaded background png
  HShapeLayout text = new HShapeLayout().target(textImage); 
  
  // Create color selection to be used for main page
  colors = new HColorPool(#9dff00, #00c3fe, #ff1d95, #a000fa, #ffffff, #ffffff, #ffffff);
  
  // Create pool: the number specifies haw many shapes will be randomly placed in "CREATE" text
  pool = new HDrawablePool(300); 
  
  // Load in vector (called "tri") that sticks to the png image
  HShape tri = new HShape("singleTriangle.svg");
  
  // Randomize colors of triangles, but only use colors from the set selection
  tri.randomColors(colors.fillAndStroke()); 
  
  // Add the shapes that stick to non-transparent pixels of the png background image 
  pool.autoAddToStage()
    .add(tri)
    .colorist( colors ) // specify colors to be used for triangles 
    .layout(text) // specify the ShapeLayout being used
    .onCreate(
      new HCallback() {
        public void run(Object obj) {
          HDrawable t = (HDrawable) obj;   // create triangles
          t
              .noStroke()                  // the triangles have no stroke
              .size( (int)random(20, 40) ) // the triangles vary in size from 30 to 50 pixels
              .anchorAt(H.CENTER)          // make sure the triangles rotate around their center point
              .rotation(random(0, 360))     // set random rotation for triangles
          ;
        }
      })
    .requestAll()
  ;
  
  // Load in text to promt user
  HImage prompt = new HImage("prompt.png");
  // Center the image
  prompt
    .scale(.3)
    .anchorAt(H.CENTER)
    .loc(width/2, (height/2 + 100))
    ;
  H.add(prompt);
  
  // If a key is pressed, go to second state (page2)
  if (keyPressed) {
      motifChoiceState = true; 
      beginState = false;
  }
    
  H.drawStage();
  H.remove(textImage);
  H.remove(prompt);
  
}