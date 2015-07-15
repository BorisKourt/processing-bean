Connection osc = new Connection();

void setup() {
  size( 1024, 768 );
  frameRate( 60 );
}
 
void draw() {
  background(200);
  
  // Check if there are any devices before looping over them.
  if( osc.devices != null ) {
    
    for(int i = 0; i < osc.devices.length; i++) {
      Device bean = osc.devices[i]; // Store the current device for ease of access.
      
      // Calculate the width for the whole bean. 
      int bean_area = width / osc.devices.length; 
      int rectangle_width = bean_area / 3;
      
      noStroke();
      translate(0, height / 2); // Moves to center vertically.
      
      // Draw a transparent background for the whole bean.
      if (i % 2 == 0) {
        fill( 255 - (20 * i), 20 * i, 0, 50  );
      } else {
        fill( 0, 20 * i, 255 - (20 * i), 50 );
      }
      
      rect(i * bean_area, height / 2 * -1, bean_area, height);
      
      stroke(255);
      strokeWeight(2);
      
      // These are just to get more random colors quickly:
      if (i % 2 == 0) {
        fill( 255 - (20 * i), 20 * i, 0  );
      } else {
        fill( 0, 20 * i, 255 - (20 * i) );
      }
      
      // Display a rectangle for each axis:
      rect(i * bean_area, 0, rectangle_width, bean.get(1));
      rect(i * bean_area + rectangle_width, 0, rectangle_width, bean.get(2));
      rect(i * bean_area + (rectangle_width * 2), 0, rectangle_width, bean.get(3));
      
      // Show the name of the bean on screen!
      //   text with text shadow for readability.
      fill(0);
      text(bean.name, i * bean_area + 6, 21 );
      fill(255);
      text(bean.name, i * bean_area + 5, 20 );
      text(bean.name, i * bean_area + 5, 20 ); // Shows up better.
      
      // Show the values:
      fill(0);
      text(bean.get(1), i * bean_area + 6, -19 );
      text(bean.get(2), i * bean_area + 6 + rectangle_width, -19 );
      text(bean.get(3), i * bean_area + 6 + (rectangle_width * 2), -19 ); 
      fill(255);
      text(bean.get(1), i * bean_area + 5, -20 );
      text(bean.get(2), i * bean_area + 5 + rectangle_width, -20 );
      text(bean.get(3), i * bean_area + 5 + (rectangle_width * 2), -20 ); 

      translate(0, height / 2 * -1); // returns to original coords for next translate.
    }
  }
  
}