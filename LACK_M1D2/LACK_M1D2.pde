Timer timer1, timer2, timer3, timer4, timer5, timer6, timer7, timer8, timer9, timer10, timer11, timer12, timer13;
Timer timer14, timer15, timer16, timer17, timer18, timer19, timer20, timer21, timer22, timer23, timer24, timer25, timer26;
Timer timer27, timer28, timer29, timer30, timer31, timer32, timer33, timer34, timer35, timer36, timer37, timer38, timer39;
Timer timer40, timer41, timer42, timer43, timer44, timer45, timer46, timer47, timer48, timer49, timer50, timer51, timer52;

int tim = 10;
long time_run = 60000;

import processing.serial.*;
import controlP5.*;

ControlP5 cp5;

Serial port;
String[] comList;
int portNum;
boolean selected = false, connected = false, click = false;


void setup() {
  reload();
  list1 = mytable.getStringColumn("Id");

  comList = Serial.list();
  guiSetup();
  noStroke();
  size(1300, 600);
  ttt();
}
int xxxxs=0;
void draw() {

  background(0);
  update(mouseX, mouseY);
  drawTimer();
  blendMode(DIFFERENCE);
  dis();
  buttox();
    CP5AddOns();
     
  if(connected) {
    //println(states);
    
    receiveData();
  } 
 
}


int lengthx = 53;
boolean[] states = new boolean[lengthx];
boolean[] oldstates = new boolean[lengthx];
//void serialEvent(Serial port) {

  // get message till line break (ASCII > 13)
  
//}
