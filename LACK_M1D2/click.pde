void mousePressed() {
  if (circleOver1&&(mouseButton == LEFT )) {
   if(click) timer1.reset (timexx[0], 10);
    println("LED 1 ON");
    s1 = 3;
    output(11, 10, "01 : SET stanby ||  OK!! : " + timexx[0] / 60000 + " min");
    if (connected) {
      port.write("x1");
    }
  }if (circleOver1&&(mouseButton ==  RIGHT)) {
    s1 = 1;
     timer1.reset (200, 10);
    
    if (connected) {
      port.write("y1");
    }
  }

  if (circleOver2&&(mouseButton == LEFT )) {
   if(click) timer2.reset (timexx[1], 10);
    println("LED 2 ON");
    s2 = 3;
    output(11, 10, "02 : SET stanby ||  OK!! : " + timexx[1] / 60000 + " min");
    if (connected) {
      port.write("x2");
    }
  }if (circleOver2&&(mouseButton ==  RIGHT)) {
    s2 = 1;
     timer2.reset (200, 10);
    
    if (connected) {
      port.write("y2");
    }
  }

   if (circleOver3&&(mouseButton == LEFT )) {
   if(click) timer3.reset (timexx[2], 10);
    println("LED 3 ON");
    s3 = 3;
    output(11, 10, "03 : SET stanby ||  OK!! : " + timexx[2] / 60000 + " min");
    if (connected) {
      port.write("x3");
    }
  }if (circleOver3&&(mouseButton ==  RIGHT)) {
    s3 = 1;
     timer3.reset (200, 10);
    
    if (connected) {
      port.write("y3");
    }
  }

   if (circleOver4&&(mouseButton == LEFT )) {
   if(click) timer4.reset (timexx[4], 10);
    println("LED 4 ON");
    s4 = 3;
    output(11, 10, "04 : SET stanby ||  OK!! : " + timexx[4] / 60000 + " min");
    if (connected) {
      port.write("x4");
    }
  }if (circleOver4&&(mouseButton ==  RIGHT)) {
    s4 = 1;
     timer4.reset (200, 10);
    
    if (connected) {
      port.write("y4");
    }
  }

   if (circleOver5&&(mouseButton == LEFT )) {
   if(click) timer5.reset (timexx[5], 10);
    println("LED 5 ON");
    s5 = 3;
    output(11, 10, "05 : SET stanby ||  OK!! : " + timexx[5] / 60000 + " min");
    if (connected) {
      port.write("x5");
    }
  }if (circleOver5&&(mouseButton ==  RIGHT)) {
    s5 = 1;
     timer5.reset (200, 10);
    
    if (connected) {
      port.write("y5");
    }
  }

   if (circleOver6&&(mouseButton == LEFT )) {
   if(click) timer6.reset (timexx[6], 10);
    println("LED 6 ON");
    s6 = 3;
    output(11, 10, "06 : SET stanby ||  OK!! : " + timexx[6] / 60000 + " min");
    if (connected) {
      port.write("x6");
    }
  }if (circleOver6&&(mouseButton ==  RIGHT)) {
    s6 = 1;
     timer6.reset (200, 10);
    
    if (connected) {
      port.write("y6");
    }
  }


 if (circleOver7&&(mouseButton == LEFT )) {
   if(click) timer7.reset (timexx[7], 10);
    println("LED 7 ON");
    s7 = 3;
    output(11, 10, "07 : SET stanby ||  OK!! : " + timexx[7] / 60000 + " min");
    if (connected) {
      port.write("x7");
    }
  }if (circleOver7&&(mouseButton ==  RIGHT)) {
    s7 = 1;
     timer7.reset (200, 10);
    
    if (connected) {
      port.write("y7");
    }
  }

   if (circleOver8&&(mouseButton == LEFT )) {
   if(click) timer8.reset (timexx[8], 10);
    println("LED 8 ON");
    s8 = 3;
    output(11, 10, "08 : SET stanby ||  OK!! : " + timexx[8] / 60000 + " min");
    if (connected) {
      port.write("x8");
    }
  }if (circleOver8&&(mouseButton ==  RIGHT)) {
    s8 = 1;
     timer8.reset (200, 10);
    
    if (connected) {
      port.write("y8");
    }
  }

   if (circleOver9&&(mouseButton == LEFT )) {
   if(click) timer9.reset (timexx[8], 10);
    println("LED 9 ON");
    s9 = 3;
    output(11, 10, "09 : SET stanby ||  OK!! : " + timexx[8] / 60000 + " min");
    if (connected) {
      port.write("x9");
    }
  }if (circleOver9&&(mouseButton ==  RIGHT)) {
    s9 = 1;
     timer9.reset (200, 10);
    
    if (connected) {
      port.write("y9");
    }
  }

   if (circleOver10&&(mouseButton == LEFT )) {
   if(click) timer10.reset (timexx[9], 10);
    println("LED 10 ON");
    s10 = 3;
    output(11, 10, "10 : SET stanby ||  OK!! : " + timexx[9] / 60000 + " min");
    if (connected) {
      port.write("x10");
    }
  }if (circleOver10&&(mouseButton ==  RIGHT)) {
    s10 = 1;
     timer10.reset (200, 10);
    
    if (connected) {
      port.write("y10");
    }
  }

     if (circleOver11&&(mouseButton == LEFT )) {
   if(click) timer11.reset (timexx[10], 10);
    println("LED 11 ON");
    s11 = 3;
    output(11, 10, "11 : SET stanby ||  OK!! : " + timexx[10] / 60000 + " min");
    if (connected) {
      port.write("x11");
    }
  }if (circleOver11&&(mouseButton ==  RIGHT)) {
    s11 = 1;
     timer11.reset (200, 10);
    
    if (connected) {
      port.write("y11");
    }
  }

  if (circleOver12&&(mouseButton == LEFT )) {
   if(click) timer12.reset (timexx[11], 10);
    println("LED 12 ON");
    s12 = 3;
    output(11, 10, "12 : SET stanby ||  OK!! : " + timexx[11] / 60000 + " min");
    if (connected) {
      port.write("x12");
    }
  }if (circleOver12&&(mouseButton ==  RIGHT)) {
    s12 = 1;
     timer12.reset (200, 10);
    
    if (connected) {
      port.write("y12");
    }
  }

    if (circleOver13&&(mouseButton == LEFT )) {
   if(click) timer13.reset (timexx[12], 10);
    println("LED 13 ON");
    s13 = 3;
    output(11, 10, "13 : SET stanby ||  OK!! : " + timexx[12] / 60000 + " min");
    if (connected) {
      port.write("x13");
    }
  }if (circleOver13&&(mouseButton ==  RIGHT)) {
    s13 = 1;
     timer13.reset (200, 10);
    
    if (connected) {
      port.write("y13");
    }
  }

     if (circleOver14&&(mouseButton == LEFT )) {
   if(click) timer14.reset (timexx[13], 10);
    println("LED 14 ON");
    s14 = 3;
    output(11, 10, "14 : SET stanby ||  OK!! : " + timexx[13] / 60000 + " min");
    if (connected) {
      port.write("x14");
    }
  }if (circleOver14&&(mouseButton ==  RIGHT)) {
    s14 = 1;
     timer14.reset (200, 10);
    
    if (connected) {
      port.write("y14");
    }
  }

  if (circleOver15&&(mouseButton == LEFT )) {
   if(click) timer15.reset (timexx[14], 10);
    println("LED 15 ON");
    s15 = 3;
    output(11, 10, "15 : SET stanby ||  OK!! : " + timexx[14] / 60000 + " min");
    if (connected) {
      port.write("x15");
    }
  }if (circleOver15&&(mouseButton ==  RIGHT)) {
    s15 = 1;
     timer15.reset (200, 10);
    
    if (connected) {
      port.write("y15");
    }
  }

    if (circleOver15&&(mouseButton == LEFT )) {
   if(click) timer15.reset (timexx[14], 10);
    println("LED 15 ON");
    s15 = 3;
    output(11, 10, "15 : SET stanby ||  OK!! : " + timexx[14] / 60000 + " min");
    if (connected) {
      port.write("x15");
    }
  }if (circleOver15&&(mouseButton ==  RIGHT)) {
    s15 = 1;
     timer15.reset (200, 10);
    
    if (connected) {
      port.write("y15");
    }
  }

    if (circleOver16&&(mouseButton == LEFT )) {
   if(click) timer16.reset (timexx[15], 10);
    println("LED 16 ON");
    s16 = 3;
    output(11, 10, "16 : SET stanby ||  OK!! : " + timexx[15] / 60000 + " min");
    if (connected) {
      port.write("x16");
    }
  }if (circleOver16&&(mouseButton ==  RIGHT)) {
    s16 = 1;
     timer16.reset (200, 10);
    
    if (connected) {
      port.write("y16");
    }
  }

    if (circleOver17&&(mouseButton == LEFT )) {
   if(click) timer17.reset (timexx[16], 10);
    println("LED 17 ON");
    s17 = 3;
    output(11, 10, "17 : SET stanby ||  OK!! : " + timexx[16] / 60000 + " min");
    if (connected) {
      port.write("x17");
    }
  }if (circleOver17&&(mouseButton ==  RIGHT)) {
    s17 = 1;
     timer17.reset (200, 10);
    
    if (connected) {
      port.write("y17");
    }
  }

  if (circleOver18&&(mouseButton == LEFT )) {
   if(click) timer18.reset (timexx[17], 10);
    println("LED 18 ON");
    s18 = 3;
    output(11, 10, "18 : SET stanby ||  OK!! : " + timexx[17] / 60000 + " min");
    if (connected) {
      port.write("x18");
    }
  }if (circleOver18&&(mouseButton ==  RIGHT)) {
    s18 = 1;
     timer18.reset (200, 10);
    
    if (connected) {
      port.write("y18");
    }
  }

    if (circleOver19&&(mouseButton == LEFT )) {
   if(click) timer19.reset (timexx[18], 10);
    println("LED 19 ON");
    s19 = 3;
    output(11, 10, "19 : SET stanby ||  OK!! : " + timexx[18] / 60000 + " min");
    if (connected) {
      port.write("x19");
    }
  }if (circleOver19&&(mouseButton ==  RIGHT)) {
    s19 = 1;
     timer19.reset (200, 10);
    
    if (connected) {
      port.write("y19");
    }
  }

    if (circleOver20&&(mouseButton == LEFT )) {
   if(click) timer20.reset (timexx[19], 10);
    println("LED 20 ON");
    s20 = 3;
    output(11, 10, "20 : SET stanby ||  OK!! : " + timexx[19] / 60000 + " min");
    if (connected) {
      port.write("x20");
    }
  }if (circleOver20&&(mouseButton ==  RIGHT)) {
    s20 = 1;
     timer20.reset (200, 10);
    
    if (connected) {
      port.write("y20");
    }
  }

    if (circleOver21&&(mouseButton == LEFT )) {
   if(click) timer21.reset (timexx[20], 10);
    println("LED 21 ON");
    s21 = 3;
    output(11, 10, "21 : SET stanby ||  OK!! : " + timexx[20] / 60000 + " min");
    if (connected) {
      port.write("x21");
    }
  }if (circleOver21&&(mouseButton ==  RIGHT)) {
    s21 = 1;
     timer21.reset (200, 10);
    
    if (connected) {
      port.write("y21");
    }
  }

  if (circleOver22&&(mouseButton == LEFT )) {
   if(click) timer22.reset (timexx[21], 10);
    println("LED 22 ON");
    s22 = 3;
    output(11, 10, "22 : SET stanby ||  OK!! : " + timexx[21] / 60000 + " min");
    if (connected) {
      port.write("x22");
    }
  }if (circleOver22&&(mouseButton ==  RIGHT)) {
    s22 = 1;
     timer22.reset (200, 10);
    
    if (connected) {
      port.write("y22");
    }
  }

  if (circleOver23&&(mouseButton == LEFT )) {
   if(click) timer23.reset (timexx[22], 10);
    println("LED 23 ON");
    s23 = 3;
    output(11, 10, "23 : SET stanby ||  OK!! : " + timexx[22] / 60000 + " min");
    if (connected) {
      port.write("x23");
    }
  }if (circleOver23&&(mouseButton ==  RIGHT)) {
    s23 = 1;
     timer23.reset (200, 10);
    
    if (connected) {
      port.write("y23");
    }
  }

  if (circleOver24&&(mouseButton == LEFT )) {
   if(click) timer24.reset (timexx[23], 10);
    println("LED 24 ON");
    s24 = 3;
    output(11, 10, "24 : SET stanby ||  OK!! : " + timexx[23] / 60000 + " min");
    if (connected) {
      port.write("x24");
    }
  }if (circleOver24&&(mouseButton ==  RIGHT)) {
    s24 = 1;
     timer24.reset (200, 10);
    
    if (connected) {
      port.write("y24");
    }
  }

  if (circleOver25&&(mouseButton == LEFT )) {
   if(click) timer25.reset (timexx[24], 10);
    println("LED 25 ON");
    s25 = 3;
    output(11, 10, "25 : SET stanby ||  OK!! : " + timexx[24] / 60000 + " min");
    if (connected) {
      port.write("x25");
    }
  }if (circleOver25&&(mouseButton ==  RIGHT)) {
    s25 = 1;
     timer25.reset (200, 10);
    
    if (connected) {
      port.write("y25");
    }
  }

  if (circleOver26&&(mouseButton == LEFT )) {
   if(click) timer26.reset (timexx[25], 10);
    println("LED 26 ON");
    s26 = 3;
    output(11, 10, "26 : SET stanby ||  OK!! : " + timexx[25] / 60000 + " min");
    if (connected) {
      port.write("x26");
    }
  }if (circleOver26&&(mouseButton ==  RIGHT)) {
    s26 = 1;
     timer26.reset (200, 10);
    
    if (connected) {
      port.write("y26");
    }
  }


 if (circleOver27&&(mouseButton == LEFT )) {
   if(click) timer27.reset (timexx[26], 10);
    println("LED 27 ON");
    s27 = 3;
    output(11, 10, "27 : SET stanby ||  OK!! : " + timexx[26] / 60000 + " min");
    if (connected) {
      port.write("x27");
    }
  }if (circleOver27&&(mouseButton ==  RIGHT)) {
    s27 = 1;
     timer27.reset (200, 10);
    
    if (connected) {
      port.write("y27");
    }
  }

 if (circleOver27&&(mouseButton == LEFT )) {
   if(click) timer27.reset (timexx[26], 10);
    println("LED 27 ON");
    s27 = 3;
    output(11, 10, "27 : SET stanby ||  OK!! : " + timexx[26] / 60000 + " min");
    if (connected) {
      port.write("x27");
    }
  }if (circleOver27&&(mouseButton ==  RIGHT)) {
    s27 = 1;
     timer27.reset (200, 10);
    
    if (connected) {
      port.write("y27");
    }
  }


 if (circleOver28&&(mouseButton == LEFT )) {
   if(click) timer28.reset (timexx[27], 10);
    println("LED 28 ON");
    s28 = 3;
    output(11, 10, "28 : SET stanby ||  OK!! : " + timexx[27] / 60000 + " min");
    if (connected) {
      port.write("x28");
    }
  }if (circleOver28&&(mouseButton ==  RIGHT)) {
    s28 = 1;
     timer28.reset (200, 10);
    
    if (connected) {
      port.write("y28");
    }
  }

 if (circleOver29&&(mouseButton == LEFT )) {
   if(click) timer29.reset (timexx[28], 10);
    println("LED 29 ON");
    s29 = 3;
    output(11, 10, "29 : SET stanby ||  OK!! : " + timexx[28] / 60000 + " min");
    if (connected) {
      port.write("x29");
    }
  }if (circleOver29&&(mouseButton ==  RIGHT)) {
    s29 = 1;
     timer29.reset (200, 10);
    
    if (connected) {
      port.write("y29");
    }
  }

 if (circleOver30&&(mouseButton == LEFT )) {
   if(click) timer30.reset (timexx[29], 10);
    println("LED 30 ON");
    s30 = 3;
    output(11, 10, "30 : SET stanby ||  OK!! : " + timexx[29] / 60000 + " min");
    if (connected) {
      port.write("x30");
    }
  }if (circleOver30&&(mouseButton ==  RIGHT)) {
    s30 = 1;
     timer30.reset (200, 10);
    
    if (connected) {
      port.write("y30");
    }
  }

 if (circleOver31&&(mouseButton == LEFT )) {
   if(click) timer31.reset (timexx[30], 10);
    println("LED 31 ON");
    s31 = 3;
    output(11, 10, "31 : SET stanby ||  OK!! : " + timexx[30] / 60000 + " min");
    if (connected) {
      port.write("x31");
    }
  }if (circleOver31&&(mouseButton ==  RIGHT)) {
    s31 = 1;
     timer31.reset (200, 10);
    
    if (connected) {
      port.write("y31");
    }
  }

   if (circleOver32&&(mouseButton == LEFT )) {
   if(click) timer32.reset (timexx[31], 10);
    println("LED 32 ON");
    s32 = 3;
    output(11, 10, "32 : SET stanby ||  OK!! : " + timexx[31] / 60000 + " min");
    if (connected) {
      port.write("x32");
    }
  }if (circleOver32&&(mouseButton ==  RIGHT)) {
    s32 = 1;
     timer32.reset (200, 10);
    
    if (connected) {
      port.write("y32");
    }
  }

   if (circleOver33&&(mouseButton == LEFT )) {
   if(click) timer33.reset (timexx[32], 10);
    println("LED 33 ON");
    s33 = 3;
    output(11, 10, "33 : SET stanby ||  OK!! : " + timexx[32] / 60000 + " min");
    if (connected) {
      port.write("x33");
    }
  }if (circleOver33&&(mouseButton ==  RIGHT)) {
    s33 = 1;
     timer33.reset (200, 10);
    
    if (connected) {
      port.write("y33");
    }
  }

 if (circleOver34&&(mouseButton == LEFT )) {
   if(click) timer34.reset (timexx[33], 10);
    println("LED 34 ON");
    s34 = 3;
    output(11, 10, "34 : SET stanby ||  OK!! : " + timexx[33] / 60000 + " min");
    if (connected) {
      port.write("x34");
    }
  }if (circleOver34&&(mouseButton ==  RIGHT)) {
    s34 = 1;
     timer34.reset (200, 10);
    
    if (connected) {
      port.write("y34");
    }
  }

   if (circleOver35&&(mouseButton == LEFT )) {
   if(click) timer35.reset (timexx[34], 10);
    println("LED 35 ON");
    s35 = 3;
    output(11, 10, "35 : SET stanby ||  OK!! : " + timexx[34] / 60000 + " min");
    if (connected) {
      port.write("x35");
    }
  }if (circleOver35&&(mouseButton ==  RIGHT)) {
    s35 = 1;
     timer35.reset (200, 10);
    
    if (connected) {
      port.write("y35");
    }
  }

   if (circleOver36&&(mouseButton == LEFT )) {
   if(click) timer36.reset (timexx[35], 10);
    println("LED 36 ON");
    s36 = 3;
    output(11, 10, "36 : SET stanby ||  OK!! : " + timexx[35] / 60000 + " min");
    if (connected) {
      port.write("x36");
    }
  }if (circleOver36&&(mouseButton ==  RIGHT)) {
    s36 = 1;
     timer36.reset (200, 10);
    
    if (connected) {
      port.write("y36");
    }
  }

   if (circleOver37&&(mouseButton == LEFT )) {
   if(click) timer37.reset (timexx[36], 10);
    println("LED 37 ON");
    s37 = 3;
    output(11, 10, "37 : SET stanby ||  OK!! : " + timexx[36] / 60000 + " min");
    if (connected) {
      port.write("x37");
    }
  }if (circleOver37&&(mouseButton ==  RIGHT)) {
    s37 = 1;
     timer37.reset (200, 10);
    
    if (connected) {
      port.write("y37");
    }
  }

   if (circleOver38&&(mouseButton == LEFT )) {
   if(click) timer38.reset (timexx[37], 10);
    println("LED 38 ON");
    s38 = 3;
    output(11, 10, "38 : SET stanby ||  OK!! : " + timexx[37] / 60000 + " min");
    if (connected) {
      port.write("x38");
    }
  }if (circleOver38&&(mouseButton ==  RIGHT)) {
    s38 = 1;
     timer38.reset (200, 10);
    
    if (connected) {
      port.write("y38");
    }
  }

   if (circleOver39&&(mouseButton == LEFT )) {
   if(click) timer39.reset (timexx[38], 10);
    println("LED 39 ON");
    s39 = 3;
    output(11, 10, "39 : SET stanby ||  OK!! : " + timexx[38] / 60000 + " min");
    if (connected) {
      port.write("x39");
    }
  }if (circleOver39&&(mouseButton ==  RIGHT)) {
    s39 = 1;
     timer39.reset (200, 10);
    
    if (connected) {
      port.write("y39");
    }
  }

   if (circleOver40&&(mouseButton == LEFT )) {
   if(click) timer40.reset (timexx[39], 10);
    println("LED 40 ON");
    s40 = 3;
    output(11, 10, "40 : SET stanby ||  OK!! : " + timexx[39] / 60000 + " min");
    if (connected) {
      port.write("x40");
    }
  }if (circleOver40&&(mouseButton ==  RIGHT)) {
    s40 = 1;
     timer40.reset (200, 10);
    
    if (connected) {
      port.write("y40");
    }
  }

   if (circleOver41&&(mouseButton == LEFT )) {
   if(click) timer41.reset (timexx[40], 10);
    println("LED 41 ON");
    s41 = 3;
    output(11, 10, "41 : SET stanby ||  OK!! : " + timexx[40] / 60000 + " min");
    if (connected) {
      port.write("x41");
    }
  }if (circleOver41&&(mouseButton ==  RIGHT)) {
    s41 = 1;
     timer41.reset (200, 10);
    
    if (connected) {
      port.write("y41");
    }
  }

     if (circleOver42&&(mouseButton == LEFT )) {
   if(click) timer42.reset (timexx[41], 10);
    println("LED 41 ON");
    s42 = 3;
    output(11, 10, "42 : SET stanby ||  OK!! : " + timexx[41] / 60000 + " min");
    if (connected) {
      port.write("x42");
    }
  }if (circleOver42&&(mouseButton ==  RIGHT)) {
    s42 = 1;
     timer42.reset (200, 10);
    
    if (connected) {
      port.write("y42");
    }
  }

     if (circleOver43&&(mouseButton == LEFT )) {
   if(click) timer43.reset (timexx[42], 10);
    println("LED 43 ON");
    s43 = 3;
    output(11, 10, "43 : SET stanby ||  OK!! : " + timexx[42] / 60000 + " min");
    if (connected) {
      port.write("x43");
    }
  }if (circleOver43&&(mouseButton ==  RIGHT)) {
    s43 = 1;
     timer43.reset (200, 10);
    
    if (connected) {
      port.write("y43");
    }
  }

     if (circleOver44&&(mouseButton == LEFT )) {
   if(click) timer44.reset (timexx[43], 10);
    println("LED 44 ON");
    s44 = 3;
    output(11, 10, "44 : SET stanby ||  OK!! : " + timexx[43] / 60000 + " min");
    if (connected) {
      port.write("x44");
    }
  }if (circleOver44&&(mouseButton ==  RIGHT)) {
    s44 = 1;
     timer44.reset (200, 10);
    
    if (connected) {
      port.write("y44");
    }
  }

     if (circleOver45&&(mouseButton == LEFT )) {
   if(click) timer45.reset (timexx[44], 10);
    println("LED 45 ON");
    s45 = 3;
    output(11, 10, "45 : SET stanby ||  OK!! : " + timexx[44] / 60000 + " min");
    if (connected) {
      port.write("x45");
    }
  }if (circleOver45&&(mouseButton ==  RIGHT)) {
    s45 = 1;
     timer45.reset (200, 10);
    
    if (connected) {
      port.write("y45");
    }
  }

     if (circleOver46&&(mouseButton == LEFT )) {
   if(click) timer46.reset (timexx[45], 10);
    println("LED 46 ON");
    s46 = 3;
    output(11, 10, "46 : SET stanby ||  OK!! : " + timexx[45] / 60000 + " min");
    if (connected) {
      port.write("x46");
    }
  }if (circleOver46&&(mouseButton ==  RIGHT)) {
    s46 = 1;
     timer46.reset (200, 10);
    
    if (connected) {
      port.write("y46");
    }
  }

     if (circleOver47&&(mouseButton == LEFT )) {
   if(click) timer47.reset (timexx[46], 10);
    println("LED 47 ON");
    s47 = 3;
    output(11, 10, "47 : SET stanby ||  OK!! : " + timexx[46] / 60000 + " min");
    if (connected) {
      port.write("x47");
    }
  }if (circleOver47&&(mouseButton ==  RIGHT)) {
    s47 = 1;
     timer47.reset (200, 10);
    
    if (connected) {
      port.write("y47");
    }
  }

     if (circleOver48&&(mouseButton == LEFT )) {
   if(click) timer48.reset (timexx[47], 10);
    println("LED 48 ON");
    s48 = 3;
    output(11, 10, "48 : SET stanby ||  OK!! : " + timexx[47] / 60000 + " min");
    if (connected) {
      port.write("x48");
    }
  }if (circleOver48&&(mouseButton ==  RIGHT)) {
    s48 = 1;
     timer48.reset (200, 10);
    
    if (connected) {
      port.write("y48");
    }
  }

     if (circleOver49&&(mouseButton == LEFT )) {
   if(click) timer49.reset (timexx[48], 10);
    println("LED 49 ON");
    s49 = 3;
    output(11, 10, "49 : SET stanby ||  OK!! : " + timexx[48] / 60000 + " min");
    if (connected) {
      port.write("x49");
    }
  }if (circleOver49&&(mouseButton ==  RIGHT)) {
    s49 = 1;
     timer49.reset (200, 10);
    
    if (connected) {
      port.write("y49");
    }
  }

   if (circleOver50&&(mouseButton == LEFT )) {
   if(click) timer50.reset (timexx[49], 10);
    println("LED 50 ON");
    s50 = 3;
    output(11, 10, "50 : SET stanby ||  OK!! : " + timexx[49] / 60000 + " min");
    if (connected) {
      port.write("x50");
    }
  }if (circleOver50&&(mouseButton ==  RIGHT)) {
    s50 = 1;
     timer50.reset (200, 10);
    
    if (connected) {
      port.write("y50");
    }
  }

     if (circleOver51&&(mouseButton == LEFT )) {
   if(click) timer51.reset (timexx[50], 10);
    println("LED 51 ON");
    s51 = 3;
    output(11, 10, "51 : SET stanby ||  OK!! : " + timexx[50] / 60000 + " min");
    if (connected) {
      port.write("x51");
    }
  }if (circleOver51&&(mouseButton ==  RIGHT)) {
    s51 = 1;
     timer51.reset (200, 10);
    
    if (connected) {
      port.write("y51");
    }
  }

     if (circleOver52&&(mouseButton == LEFT )) {
   if(click) timer52.reset (timexx[51], 10);
    println("LED 52 ON");
    s52 = 3;
    output(11, 10, "52 : SET stanby ||  OK!! : " + timexx[51] / 60000 + " min");
    if (connected) {
      port.write("x52");
    }
  }if (circleOver52&&(mouseButton ==  RIGHT)) {
    s52 = 1;
     timer52.reset (200, 10);
    
    if (connected) {
      port.write("y52");
    }
  }
  //===================================================================================================

}
