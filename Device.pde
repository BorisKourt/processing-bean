class Device {
  
  /* 
    Contains the ten 'data store' points for each device (i.e. Bean).
    
    Is effectively a 'Bean'.
  */
  
  String UUID;
  String name;
  int[] data;
 
  Device (String uuid, String Name) {
    UUID = uuid;
    name = Name;
    
    data = new int[10];
    
    for (int i = 0; i < data.length; i++) {
      data[i] = 0;
    }
    
  }
  
  void set(int n, int d) {
    data[n - 1] = d;
  }
  
  int get( int n ) {
    return data[n - 1];
  }
  
}