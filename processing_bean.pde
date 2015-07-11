Connection osc = new Connection(41234, false); // Set to true if you need to see debug info.

void setup() {
  size( 300, 300 );
  frameRate( 25 );
}
 
void draw() {
  
 
  
  // Check if there are any devices before looping over them.
  if( osc.devices != null ) {
    //println( osc.devices.length );
    // Do things based on the data for each device.
    for (Device bean : osc.devices) {
        handle_device(bean);
    }
  }
  
 
}

void handle_device(Device bean) { 
  
  // Draws an ellipse for each bean.
  ellipse(bean.get(1), bean.get(2), bean.get(3), bean.get(3));
  
  // println( bean.get(1) ); // get the value of #1 'data store' on the bean.

}