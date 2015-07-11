import oscP5.*;
import netP5.*;

class Connection { 
  
  /* 
    Listens to OSC connections. 
    
    Stores data in an array of Devices
  */
  
  OscP5 oscP5;

  Device[] devices;

  boolean am_debugging;

  Connection (int port, boolean debug) {  
    oscP5 = new OscP5(this, port);
    am_debugging = debug;
  } 

  void updateDevice( String UUID, String beanName, float number, float data ) {
    boolean unique = true;

    if (devices != null) {
      for (Device single : devices) {
        if (single.UUID.equals(UUID)) {
          unique = false;
          single.set((int) number, (int) data);
        }
      }
    }

    if (devices == null) {
      devices = new Device[1];
      devices[0] = new Device(UUID, beanName);
    } else  if (unique) {
      Device newDevice = new Device(UUID, beanName);
      devices = (Device[]) append(devices, newDevice);
    }

  }

  void oscEvent( OscMessage theOscMessage ) {
    
    if ( theOscMessage.checkAddrPattern("/devices") == true ) {

      if ( theOscMessage.checkTypetag("ssff") ) {

        String beanUUID = theOscMessage.get(0).stringValue();  
        String beanName = theOscMessage.get(1).stringValue();  
        float number = theOscMessage.get(2).floatValue();
        float data = theOscMessage.get(3).floatValue();

        if ( am_debugging ) {
          println("###    values: " + beanUUID + ", " + beanName + ", " + number + ", " + data);
        }

        updateDevice(beanUUID,beanName, number, data);

      }
    } 


  }
  
} 