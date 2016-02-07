import processing.serial.*;

int end = 10;   
String serial;  
Serial port; 

void setup() {
  port = new Serial(this, Serial.list()[1], 9600);
  port.clear();
  serial = port.readStringUntil(end);
  serial = null;
}

void draw() {
  while (port.available() > 0) {
    serial = port.readStringUntil(end);
  }
    if (serial != null) {  //if the string is not empty, print the following
      String[] a = split(serial, ',');  //a new array (called 'a') that stores values into separate cells (separated by commas specified in your Arduino program)
      println(a[0]); //print Value1 (in cell 1 of Array - remember that arrays are zero-indexed)
    
    }
}
