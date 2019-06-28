//  CREATE: A Generative Art Application

//  This program prompts the user to choose a motif, a color palette, and a composition type 
//  in order to create a customized, yet still partly random, graphic artwork. 

// Rhea Montgomery-Walsh    ID# 17978843
// June 4, 2018

// This program was written using the HYPE Processing Library, and I taught myself how to use it from:
// https://www.skillshare.com/classes/Programming-Graphics-I-Introduction-to-Generative-Art/782118657/
//                 classroom/discussions?via=logged-in-home-your-classes&autoPlay=1&enrolledRedirect=1


// Import HYPE library
import hype.*;
import hype.extended.colorist.HColorPool;
import hype.extended.layout.HShapeLayout;
import hype.extended.layout.HGridLayout;
import hype.extended.colorist.HPixelColorist;

// Declare HYPE variables
HDrawablePool pool;
HColorPool colors; 

// Declare page state variables
boolean beginState;
boolean motifChoiceState;
boolean colorChoiceState;
boolean compositionChoiceState;
boolean outputState;

// Declare output properties (Artwork Choices)
HShape motif; // specifies which motif the user chooses
char layout; // specifies which layout the user chooses


// Set up canvas
void setup() {
  size (900, 900);
  
  // Set page statuses
  beginState = true; 
  motifChoiceState = false; 
  colorChoiceState = false;
  compositionChoiceState = false;
  outputState = false;
  
}

// Draw pages
void draw() {
  // User sees start screen: CREATE
  if (beginState) {
    begin(); 
  }
  // (1) they choose motif to use
  if (motifChoiceState) { 
    motifChoice(); 
  }
  // (2) they choose a color palette
  if (colorChoiceState) {
      colorChoice();
  }
  // (3) they choose a composition
  if (compositionChoiceState) {
     compositionChoice();
  }
  // (4) art is shown
  if (outputState) {
    output();
  }
}