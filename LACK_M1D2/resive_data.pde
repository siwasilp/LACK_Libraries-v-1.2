void receiveData(){
  String message = port.readStringUntil(13);

  // just if there is data and at least 5 chars
  if (message != null && message.length() >= lengthx) {   
   
    for (int i =0; i< lengthx; i++) {
      if (message.charAt(i) == '1') {
        states[i] = true;
      }
      else {
        states[i] = false;
      }
    }
  }
  
  
for(int i=0;i<lengthx;i++){ 
    if(states[i]==true){
       redy(i+1);
    }
    if(states[i]==false){
      gree(i+1);
    }
    if(oldstates[i]==false&&states[i]==true){
      redx(i+1);
    }
    oldstates[i]=states[i];
    }
           
  }
  
void receiveData_old() {
   String input = port.readStringUntil('\n');
   String payload;
   int code1, code2;
  if (input != null && input.charAt(0) != 0) {
    code1 = (int)input.charAt(0)-48;
    code2 = (int)input.charAt(1)-48;
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


void redx(int z){
if(z==0){  clea();}  
if(z==1){  s1=1;   timer1.reset (timexx[0], 10); }
if(z==2){  s2=1;   timer2.reset (timexx[1], 10); }
if(z==3){  s3=1;   timer3.reset (timexx[2], 10); }
if(z==4){  s4=1;   timer4.reset (timexx[3], 10); }
if(z==5){  s5=1;   timer5.reset (timexx[4], 10); }
if(z==6){  s6=1;   timer6.reset (timexx[5], 10); }
if(z==7){  s7=1;   timer7.reset (timexx[6], 10); }
if(z==8){  s8=1;   timer8.reset (timexx[7], 10); }
if(z==9){  s9=1;   timer9.reset (timexx[8], 10); }
if(z==10){  s10=1;   timer10.reset (timexx[9], 10); }
if(z==11){  s11=1;   timer11.reset (timexx[10], 10); }

if(z==12){  s12=1;   timer12.reset (timexx[11], 10); }
if(z==13){  s13=1;   timer13.reset (timexx[12], 10); }
if(z==14){  s14=1;   timer14.reset (timexx[13], 10); }
if(z==15){  s15=1;   timer15.reset (timexx[14], 10); }
if(z==16){  s16=1;   timer16.reset (timexx[15], 10); }
if(z==17){  s17=1;   timer17.reset (timexx[16], 10); }
if(z==18){  s18=1;   timer18.reset (timexx[17], 10); }
if(z==19){  s19=1;   timer19.reset (timexx[18], 10); }
if(z==20){  s20=1;   timer20.reset (timexx[19], 10); }
if(z==21){  s21=1;   timer21.reset (timexx[20], 10); }
if(z==22){  s22=1;   timer22.reset (timexx[21], 10); }
if(z==23){  s23=1;   timer23.reset (timexx[22], 10); }
if(z==24){  s24=1;   timer24.reset (timexx[23], 10); }
if(z==25){  s25=1;   timer25.reset (timexx[24], 10); }
if(z==26){  s26=1;   timer26.reset (timexx[25], 10); }
if(z==27){  s27=1;   timer27.reset (timexx[26], 10); }
if(z==28){  s28=1;   timer28.reset (timexx[27], 10); }
if(z==29){  s29=1;   timer29.reset (timexx[28], 10); }
if(z==30){  s30=1;   timer30.reset (timexx[29], 10); }
if(z==31){  s31=1;   timer31.reset (timexx[30], 10); }
if(z==32){  s32=1;   timer32.reset (timexx[31], 10); }
if(z==33){  s33=1;   timer33.reset (timexx[32], 10); }
if(z==34){  s34=1;   timer34.reset (timexx[33], 10); }
if(z==35){  s35=1;   timer35.reset (timexx[34], 10); }
if(z==36){  s36=1;   timer36.reset (timexx[35], 10); }
if(z==37){  s37=1;   timer37.reset (timexx[36], 10); }
if(z==38){  s38=1;   timer38.reset (timexx[37], 10); }
if(z==39){  s39=1;   timer39.reset (timexx[38], 10); }
if(z==40){  s40=1;   timer40.reset (timexx[39], 10); }
if(z==41){  s41=1;   timer41.reset (timexx[40], 10); }
if(z==42){  s42=1;   timer42.reset (timexx[41], 10); }
if(z==43){  s43=1;   timer43.reset (timexx[42], 10); }
if(z==44){  s44=1;   timer44.reset (timexx[43], 10); }
if(z==45){  s45=1;   timer45.reset (timexx[44], 10); }
if(z==46){  s46=1;   timer46.reset (timexx[45], 10); }
if(z==47){  s47=1;   timer47.reset (timexx[46], 10); }
if(z==48){  s48=1;   timer48.reset (timexx[47], 10); }
if(z==49){  s49=1;   timer49.reset (timexx[48], 10); }
if(z==50){  s50=1;   timer50.reset (timexx[49], 10); }
if(z==51){  s51=1;   timer51.reset (timexx[50], 10); }
if(z==52){  s52=1;   timer52.reset (timexx[51], 10); }

}

void gree(int z){
if(z==0){  clea();}  
if(z==1){  s1=2;  timer1.cancel(); }
if(z==2){  s2=2;  timer2.cancel(); }
if(z==3){  s3=2;  timer3.cancel(); }
if(z==4){  s4=2;  timer4.cancel(); }
if(z==5){  s5=2;  timer5.cancel(); }
if(z==6){  s6=2;  timer6.cancel(); }
if(z==7){  s7=2;  timer7.cancel(); }
if(z==8){  s8=2;  timer8.cancel(); }
if(z==9){  s9=2;  timer9.cancel(); }
if(z==10){ s10=2;  timer10.cancel(); }
if(z==11){ s11=2;  timer11.cancel(); }
if(z==12){ s12=2;  timer12.cancel(); }
if(z==13){ s13=2;  timer13.cancel(); }
if(z==14){ s14=2;  timer14.cancel(); }
if(z==15){ s15=2;  timer15.cancel(); }
if(z==16){ s16=2;  timer16.cancel(); }
if(z==17){ s17=2;  timer17.cancel(); }
if(z==18){ s18=2;  timer18.cancel(); }
if(z==19){ s19=2;  timer19.cancel(); }
if(z==20){ s20=2;  timer20.cancel(); }
if(z==20){ s20=2;  timer20.cancel(); }
if(z==21){ s21=2;  timer21.cancel(); }
if(z==22){ s22=2;  timer22.cancel(); }
if(z==23){ s23=2;  timer23.cancel(); }
if(z==24){ s24=2;  timer24.cancel(); }
if(z==25){ s25=2;  timer25.cancel(); }
if(z==26){ s26=2;  timer26.cancel(); }
if(z==27){ s27=2;  timer27.cancel(); }
if(z==28){ s28=2;  timer28.cancel(); }
if(z==29){ s29=2;  timer29.cancel(); }
if(z==30){ s30=2;  timer30.cancel(); }
if(z==31){ s31=2;  timer31.cancel(); }
if(z==32){ s32=2;  timer32.cancel(); }
if(z==33){ s33=2;  timer33.cancel(); }
if(z==34){ s34=2;  timer34.cancel(); }
if(z==35){ s35=2;  timer35.cancel(); }
if(z==36){ s36=2;  timer36.cancel(); }
if(z==37){ s37=2;  timer37.cancel(); }
if(z==38){ s38=2;  timer38.cancel(); }
if(z==39){ s39=2;  timer39.cancel(); }
if(z==40){ s40=2;  timer40.cancel(); }
if(z==41){ s41=2;  timer41.cancel(); }
if(z==42){ s42=2;  timer42.cancel(); }
if(z==43){ s43=2;  timer43.cancel(); }
if(z==44){ s44=2;  timer44.cancel(); }
if(z==45){ s45=2;  timer45.cancel(); }
if(z==46){ s46=2;  timer46.cancel(); }
if(z==47){ s47=2;  timer47.cancel(); }
if(z==48){ s48=2;  timer48.cancel(); }
if(z==49){ s49=2;  timer49.cancel(); }
if(z==50){ s50=2;  timer50.cancel(); }
if(z==51){ s51=2;  timer51.cancel(); }
if(z==52){ s52=2;  timer52.cancel(); }
 
    }

void redy(int z){
if(z==0){  clea();}  
if(z==1){  s1=1;  }
if(z==2){  s2=1;  }
if(z==3){  s3=1;  }
if(z==4){  s4=1;  }
if(z==5){  s5=1;  }
if(z==6){  s6=1;  }
if(z==7){  s7=1;  }
if(z==8){  s8=1;  }
if(z==9){  s9=1;  }
if(z==10){  s10=1;  }
if(z==11){  s11=1;   }

if(z==12){  s12=1;   }
if(z==13){  s13=1;   }
if(z==14){  s14=1;   }
if(z==15){  s15=1;   }
if(z==16){  s16=1;   }
if(z==17){  s17=1;   }
if(z==18){  s18=1;   }
if(z==19){  s19=1;   }
if(z==20){  s20=1;   }
if(z==21){  s21=1;   }
if(z==22){  s22=1;   }
if(z==23){  s23=1;   }
if(z==24){  s24=1;   }
if(z==25){  s25=1;   }
if(z==26){  s26=1;   }
if(z==27){  s27=1;   }
if(z==28){  s28=1;   }
if(z==29){  s29=1;   }
if(z==30){  s30=1;   }
if(z==31){  s31=1;   }
if(z==32){  s32=1;   }
if(z==33){  s33=1;   }
if(z==34){  s34=1;   }
if(z==35){  s35=1;   }
if(z==36){  s36=1;   }
if(z==37){  s37=1;   }
if(z==38){  s38=1;   }
if(z==39){  s39=1;   }
if(z==40){  s40=1;   }
if(z==41){  s41=1;   }
if(z==42){  s42=1;   }
if(z==43){  s43=1;   }
if(z==44){  s44=1;   }
if(z==45){  s45=1;   }
if(z==46){  s46=1;   }
if(z==47){  s47=1;   }
if(z==48){  s48=1;   }
if(z==49){  s49=1;   }
if(z==50){  s50=1;   }
if(z==51){  s51=1;   }
if(z==52){  s52=1;   }
}
//void receiveData() {
//  String input = port.readStringUntil('\n');
//  String payload;
//  int code1, code2;
//  if (input != null && input.charAt(0) != 0) {
//      code1 = input.charAt(0);
//    //code2 = input.charAt(1);
//    payload = trim(input.substring(0));
//    output(2,9,payload);
    
//    if(code1 == 'z'){
//        setx = Integer.parseInt(input.substring(0));
//        println(setx);
//    }
//  //  if((code1 == 's') && (code2 == 's')) {
//  //    if(payload.equals("s")) {
//  //    }else {
//  //      time_run = Integer.parseInt(trim(payload))*1000;
//  //      print(time_run);
//  //    }
//  //  } else if((code1 == 4) && (code2 == 1)) {
//  //    println(payload + " cm");
//  //  } else {
//  //    output(code1, code2, payload);
//  //  }
//  }
//}
