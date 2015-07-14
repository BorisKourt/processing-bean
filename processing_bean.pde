Connection osc = new Connection();

void setup() {
  size( 600, 600 );
  frameRate( 25 );
}
 
void draw() {
  background(250);
  
  // Check if there are any devices before looping over them.
  if( osc.devices != null ) {
    
    // Do things based on the data for each device.
    for (Device bean : osc.devices) {
        handle_device(bean);
    }
  }
  
}

void handle_device(Device bean) { 
 
  //'Sets' the 0,0 locatin to center of the screen:
  translate(width / 2, height / 2);
  //Draws a circle based on the first three data slot
  ellipse(bean.get(1), bean.get(2), bean.get(3), bean.get(3));
  //Resets the above translation, as they persist and add to eachother.
  translate(width / 2 * -1, height / 2 * -1);
  
  // println( bean.get(1) ); // get the value of #1 'data slot' on the bean.

}