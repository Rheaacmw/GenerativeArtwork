// This fuction creates the final static art peice

void output() {
    
  // declare backgroung color (black)
  H.init(this).background(#000000);
  
  // -------- if the user chose a random layout --------
  
  // This layout randomly places the motif all over the screen with different sizes and rotations
  
  if (layout == 'r') {
      // Set up pool with number of motifs wanted
      pool = new HDrawablePool((int)random(70, 150));
      pool.autoAddToStage()
          .add(motif)        // add motif to the pool
      
          .onCreate(        
              new HCallback() {
                public void run(Object obj) {   // create the multiple motifs
                  HShape d = (HShape) obj; 
                  d
                    .enableStyle(false)         // override style of svg
                    .strokeJoin(ROUND)          // modify stroke style
                    .strokeCap(ROUND)
                    .strokeWeight(1)
                    .scale(random(0.2, 0.8))     // set random scale of motif
                    .rotate( (int) random(360)) // set random rotation of motif
                    .stroke(#000000)            // stroke is black
                    .loc(random( 0, width-1), random(0, height-1))  // set random location of motif
                    .anchorAt(H.CENTER)         // make sure the placement/rotation is relative to the motif's centerpoint
                  ;
                  d.randomColors(colors.fillOnly());  // set random colors from the color palette the user chose
                }
              }
           )
           .requestAll()
       ;
  }
  
  // -------- if the user chose a grid layout --------
  
  // This layout places the motif in a grid pattern with different rotations
  
  if (layout == 'g') {
      // Set up pool with number of motifs wanted
      pool = new HDrawablePool(99);
      pool.autoAddToStage()
          .add(motif)              // add motif to the pool
      
          .layout(                 // set grid layout
              new HGridLayout()
              .startX(0)           // set X start location for the grid
              .startY(0)           // set Y start location for the grid
              .spacing(100, 100)   // set spacing for the grid
              .cols(11)            // set number of columns for the grid
           )
          
          .onCreate(
              new HCallback() {
                public void run(Object obj) {    // create the multiple motifs
                  HShape d = (HShape) obj;       
                  d
                    .enableStyle(false)          // override style of svg
                    .strokeJoin(ROUND)           // modify stroke style
                    .strokeCap(ROUND)
                    .strokeWeight(1)
                    .scale(.5)                   // set scale of motif
                    .stroke(#000000)             // stroke is black
                    .anchorAt(H.CENTER)          // make sure the placement/rotation is relative to the motif's centerpoint
                    .rotate( (int) random(360))  // set random rotation of motif
                  ;
                  d.randomColors(colors.fillOnly());  // set random colors from the color palette the user chose
                }
              }
           )
           .requestAll()
      ;
   }
   // -------- if the user chose a shape layout --------
   
   // This layout places the motif on pixels that are non-transparent; this is based on an inputted png image
   
   if (layout == 's') {
       // Set up pool with number of motifs wanted
      pool = new HDrawablePool(50000);
      pool.autoAddToStage()
          .add(motif)                // add motif to the pool
      
          .layout(                   // set shape layout
              new HShapeLayout()
              .target(
                  new HImage("face3.png").size(900)    // Load in png to use as a shape map
              )                                                 // can also test using "shapeMap5.png"
           )
          
          .onCreate(
              new HCallback() {
                public void run(Object obj) {         // create the multiple motifs
                  HShape d = (HShape) obj; 
                  d
                    .enableStyle(false)               // override style of svg
                    .strokeJoin(ROUND)                // modify stroke style
                    .strokeCap(ROUND)
                    .strokeWeight(1)
                    .scale(.18)                        // set scale of motif (very small to see shape map details)
                    .stroke(#000000)                  // black stroke 
                    .anchorAt(H.CENTER)               // make sure the placement/rotation is relative to the motif's centerpoint
                    .rotate( (int) random(360))       // set random rotation of motif
                  ;
                  d.randomColors(colors.fillOnly());  // set random colors from the color palette the user chose
                }
              }
           )
           .requestAll()
       ;

     
   }
  // -------- if the user chose a pixel layout --------
  
  // This layout randomly places the motif on the screen, and its color is determined
  //         by the pixels underneath its center point; this is based on an inputted png image
  
  if (layout == 'p') {
  
      // set up HYPE object for the pixel function, load in png to use as color map. Can also use : "colorMapLips1.png"
      final HPixelColorist colors1 = new HPixelColorist("Malin.png").fillOnly();
  
  
      // Set up pool with number of motifs wanted
      pool = new HDrawablePool(100000);
      pool.autoAddToStage()
          .add(motif)                                  // add motif to the pool
          
          .onCreate(
              new HCallback() {
                public void run(Object obj) {
                  HShape d = (HShape) obj; 
                  d
                    .enableStyle(false)                // override style of svg
                    .strokeJoin(ROUND)                 // modify stroke style
                    .strokeCap(ROUND)
                    .strokeWeight(1)
                    .scale(.1)                         // set scale of motif (very small to see color map details)
                    .stroke(#000000)                   // black stroke
                    .anchorAt(H.CENTER)                // make sure the placement/rotation is relative to the motif's centerpoint
                    .rotate( (int) random(360))        // set random rotation of motif
                    .loc(random( 0, width-1), random(0, height-1))  // set random location of motif
                  ;
                  colors1.applyColor(d);  //  use color map of uploaded png image to color the shapes
                }
              }
           )
           .requestAll()
       ;
  }

  H.drawStage();
  noLoop();     // don't constantly change colors/location/rotation/scale
}