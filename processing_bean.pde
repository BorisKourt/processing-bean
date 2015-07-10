Connection osc = new Connection(41234, false); // Set to true if you need to see debug info.

void setup() {
  size( 20, 20 );
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
  
  // If you want to draw something for a specific bean. 
  // if(bean.name == "bats") {
  //  int value = bean.get(2);
  //  ellipse(value, value, 0,0); 
  // }
  
  println( bean.UUID ); // get the value of #1 'data store' on the bean.
  println( bean.get(2) ); // get the value of #1 'data store' on the bean.

  // println( bean.get(3) ); // get the value of #1 'data store' on the bean.
  // println( bean.get(4) ); // get the value of #1 'data store' on the bean.

}