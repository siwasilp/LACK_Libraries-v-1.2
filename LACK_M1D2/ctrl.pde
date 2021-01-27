void keyb(){
  if (key == 'q') {
    timer1.reset (2000, 10);
  }
  if (key == 'w') {
    timer2.reset (2000, 10);
  }
  if (key == 'e') {
    timer3.reset (2000, 10);
  }



}


public void serialInput(String input) {
     String payload;
  output(11, 9, input);
  if(input.equals("version") || input.equals("v")) {
    output(11, 8, version);
  }
  if(input.equals("sts") || input.equals("set")) {
    output(11, 2, "Set TIME : #xxxxx [min]");
  }
  if(input.equals("#") ) {
    output(11, 2, "OK!!");
  }
  
    if (input != null && input.charAt(0) != 0) {
    int code1 = (int)input.charAt(0)-48;
    int code2 = (int)input.charAt(1)-48;
    payload = trim(input.substring(2));
    if((code1 == 4) && (code2 == 1)) {
      if(payload.equals("s")) {
       println("sss");
      } else {
        int z = Integer.parseInt(trim(payload));
        gree(z);
      }
      //================================================
    } else if((code1 == 4) && (code2 == 0)) {
      if(payload.equals("s")) {
       println("sss");
      } else {
        int z = Integer.parseInt(trim(payload));
        redx(z);
      }
    } 
    else
    {
      output(code1, code2, payload);
    }
  }
}

public void serialOutput(String s) {
  //tab size fix
  s = s.replaceAll("\t", "        ");
  
}


public void portsList(int n) {
  selected = true;
  portNum = n;
}

void mouseReleased() {
 
}

long lastKey;
void keyPressed() {
   keyb();
   
  switch(key) {
    case 'z':
      if(!inputField.isFocus()) {
        moveW.setColorBackground(color(0x00, 0xAA, 0xFF));
        moveW.lock();
        if(millis()-lastKey >= 500) {
          lastKey = millis();
          output(11, 10, "Test");
          if(connected){port.write("w");}
        }
      }
      break;
    case 'x':
      if(!inputField.isFocus()) {
        moveA.setColorBackground(color(0x00, 0xAA, 0xFF));
        moveA.lock();
        if(millis()-lastKey >= 500) {
          lastKey = millis();
          moveA.setOn();
          output(11, 10, "Pause");
          if(connected){port.write("a");}
        }
      }
      break;
    case 'c':
      if(!inputField.isFocus()) {
        moveS.setColorBackground(color(0x00, 0xAA, 0xFF));
        moveS.lock();
        if(millis()-lastKey >= 500) {
          lastKey = millis();
          moveS.setOn();
          output(11, 10, "Resume");
          if(connected){port.write("s");}
        }
      }
      break;
    case 'v':
      if(!inputField.isFocus()) {
        moveD.setColorBackground(color(0x00, 0xAA, 0xFF));
        moveD.lock();
        if(millis()-lastKey >= 500) {
          lastKey = millis();
          moveD.setOn();
          output(11, 10, "Clear");
          if(connected){port.write("p");}
        }
      }
      break;
  }
}

void keyReleased() {
  switch(key) {
    case 'z':
      moveW.setColorBackground(color(0x00, 0x2D, 0x5A));
      moveW.unlock();
       res();
      break;
    case 'x':
      moveA.setColorBackground(color(0x00, 0x2D, 0x5A));
      moveA.unlock();
       pau();
      break;
    case 'c':
      moveS.setColorBackground(color(0x00, 0x2D, 0x5A));
      moveS.unlock();
       resum();
      break;
    case 'v':
      moveD.setColorBackground(color(0x00, 0x2D, 0x5A));
      moveD.unlock();
       clea();
      break;
  }
}

long lastMouse;
public void controlEvent(ControlEvent theEvent) {
  switch(theEvent.getController().getName()) {
    case "connectButton":
      if(selected) {
        try {
          if(!connected) {
            port = new Serial(this, Serial.list()[portNum], 9600);
            connected = true;
            output(11, 8, "Connected to " + Serial.list()[portNum]);
           
          }
        } catch(Exception e) {
          output(11, 6, "Unable to connect to " + Serial.list()[portNum]);
          output(11, 6, e.toString());
          connected = false;
        }
      } else {
        output(11, 6, "Select appropriate COM port");
      }
      break;
    case "disconnectButton":
      if(connected) {
        output(11, 8, "Disconnected from " + Serial.list()[portNum]);
        output(11, 8, version);
        port.stop();
        connected = false;
        
      }
      break;
    case "Test":
      if(millis()-lastMouse >= 500) {
        lastMouse = millis();
        output(11, 10, "Test");
        if(connected){
          port.write("Test");
      }
      
      } res();
      
      break;
    case "Pause":
      if(millis()-lastMouse >= 500) {
        lastMouse = millis();
        output(11, 10, "Pause");
        if(connected){
          port.write("Pause");
      }
     
      }  pau();
      break;
    case "Resume":
      if(millis()-lastMouse >= 500) {
        lastMouse = millis();
        output(11, 10, "Resume");
        if(connected){
        port.write("Resume");
      }
      
      } resum();
      break;
    case "Clear":
      if(millis()-lastMouse >= 500) {
        lastMouse = millis();
        output(11, 10, "Clear");
        if(connected){
        port.write("p");
      } 
      
      }clea();
      break;
  }
}
