Textarea outputArea, distanceArea;
Textfield inputField;
Button scanButton, measureButton, connectButton, disconnectButton, moveW, moveA, moveS, moveD;
ScrollableList portsList;

String version = " LACK Vol 1.2 $ POWER By - Siwasilp Pornjumsilp [OHM] 096-9636799 : Suranaree Universiy [KORAT-Thailand]   * OHM_Industrial. x ID_GROUP-Corparation. <HW/SW Design>";

public void guiSetup() {
  cp5 = new ControlP5(this);
  /*default ControlP5 colors
  borders:        0074D9
  fill/inactive:  002D5A
  active:         00AAFF*/
  
  //serial output: 70-12=58 chars wide
  outputArea = cp5.addTextarea("serialOutput")
                  .setPosition(600, 465)
                  .setSize(680, 100)
                  .setFont(createFont("consolas", 12))
                  .setLineHeight(14)
                  .setColor(#FFFFFF)
                  .setColorBackground(#444444)
                  .setScrollBackground(#222222);
  
  //serial input
  inputField = cp5.addTextfield("serialInput")
                  .setPosition(600, 565)
                  .setSize(680, 20)
                  .setAutoClear(true)
                  .setLabel("")
                  .setFocus(true);
 
  //sensor turning
  int rr = 15;
  //COM port selection
  portsList = cp5.addScrollableList("portsList")
                 .setPosition(900-rr, 20)
                 .setSize(190, 100)
                 .setBarHeight(20)
                 .setItemHeight(20)
                 .setItems(comList)
                 .setLabel(" COM ports")
                 .close();
    //scan

                 
  //COM port connect
  connectButton = cp5.addButton("connectButton")
                     .setPosition(1100-rr, 20)
                     .setSize(90, 20)
                     .setLabel("connect");
  
  //COM port disconnect
  disconnectButton = cp5.addButton("disconnectButton")
                        .setPosition(1200-rr, 20)
                        .setSize(90, 20)
                        .setLabel("disconnect");
  
  //movement buttons
  moveW = cp5.addButton("Test")
             .setPosition(20, 465)
             .setSize(90, 20);
  moveW.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
  
  moveA = cp5.addButton("Pause")
             .setPosition(120, 465)
             .setSize(90, 20);
  moveA.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
  
  moveS = cp5.addButton("Resume")
             .setPosition(220, 465)
             .setSize(90, 20);
  moveS.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
  
  moveD = cp5.addButton("Clear")
             .setPosition(320, 465)
             .setSize(90, 20);
  moveD.getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
}

/*void output(String s) {
  outputArea.append(trim(s) + "\n");
}*/

void output(int code1, int code2, String s) {
  /*in packet structure:  char#   desc.
                            0      code1
                            1      code2
                            2->n   code-dependent payload
                          reserved codes: 40  continous scanning data
                                          41  single distance measurement
   out packet structure:  char#   desc.
                            0      command
                            1      payload*/
  /*commands:  t[deg] turn sensor to [deg]
               m      measure distance
               n      scan
               w      walk forward
               a      turn left
               s      walk backward
               d      turn right*/
  //codes               0          1          2          3          4          5          6          7          8          9          10         11
  String[] codes = {"       ", "[ECHO] ", "[SETUP]", "[TRACE]", "[SR04] ", "[PWM]  ", "[ERROR]", "[WARN] ", "[INFO] ", "     > ", "[CMD]  ", "[APP]  "};
  
  String[] splitted = split(s, ' ');
  int i = 0;
  int remaining = s.length();
  
  try{
  if(remaining < 58) {
    outputArea.append(codes[code1] + " " + codes[code2] + " " + trim(s) + "\n");
  } else {
    while(remaining > 58) {
      String line;
      if(i == 0) {
        line = codes[code1] + " " + codes[code2];
      } else {
        line = "                ";
      }
      while(line.length() <= 58) {
        line += " " + splitted[i++];
      }
      outputArea.append(line + "\n");
      remaining -= line.length() - 15;
    }
    String end = s.substring(s.length()-remaining);
    outputArea.append("                " + end + "\n");
  }
  }catch (Exception e) {
             
              }
  
}

void CP5AddOns() {
 
  comList = Serial.list();
  cp5.get(ScrollableList.class, "portsList").setItems(comList);


}
