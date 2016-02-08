import processing.serial.*;

int end = 10;   
String serial;  
Serial port; 
Serial myPort;  
char inByte;
int b = 0;

void setup() {

  size(800, 600);
  port = new Serial(this, Serial.list()[1], 9600);
  port.clear();
  serial = port.readStringUntil(end);
  serial = null;
}

void draw() {
  while (port.available() > 0) {
    serial = port.readStringUntil(end);
    if (b >= 10) {
      myPort.clear();
      myPort.stop();
    }


    if (serial != null) { 
      String[] a = split(serial, ','); 
      println(a[0]);
    }
  }
}
