#include <SoftwareSerial.h>
#include <FastLED.h>
#define COLOR_ORDER RGB
#define NUM_LEDS 57
#define STA_LEDS 5
#define LED_PIN  2
CRGB leds[NUM_LEDS];
int brightness = 100;
String dataIn = "";
int sts[NUM_LEDS];
int stx[NUM_LEDS];
int swPins[]  = {4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
                 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32,
                 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48,
                 49, 50, 51, 52, 53, A15, A14
                };
int ledPins[] = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
                 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33,
                 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
                 50, 51, 52, 53, 54, 55, 56
                };
int Cnt = 52;
//--------------------------------------
void setup() {
  FastLED.addLeds<WS2812, LED_PIN, RGB>(leds, NUM_LEDS);
  FastLED.setBrightness(brightness);
  Serial.begin(9600);
  reset_0();

  for (int p = 0; p < Cnt; p++)
  {
    pinMode(swPins[p], INPUT_PULLUP);
    sts[p]=0;
    stx[p]=0;
  }

}

void loop() {
  if (Serial.available() > 0) {
    dataIn = Serial.readString();
    switch (dataIn.charAt(0)) {
       case 'p': {
          dataIn.remove(0, 1);
          int pin = dataIn.toInt();
          setup();
        } break;
        
      case 'x': {
          dataIn.remove(0, 1);
          int pin = dataIn.toInt();
          sts[pin - 1] = 1;
          stx[pin - 1] = 1;

        } break;

      case 'y': {
          dataIn.remove(0, 1);
          int pin = dataIn.toInt();
          sts[pin - 1] = 0;
          stx[pin - 1] = 0;

        } break;

      case 'z': {
          dataIn.remove(0, 1);
          int pin = dataIn.toInt();
          for (int i = 0 ; i < 3 ; i ++) {
            leds[ledPins[pin - 1]] = CRGB (0, 255, 0);
            FastLED.show();
            delay(80);
            leds[ledPins[pin - 1]] = CRGB (255, 0, 0);
            FastLED.show();
            delay(80);
            leds[ledPins[pin - 1]] = CRGB (0, 0, 255);
            FastLED.show();
            delay(80);
          }
        }
    }
  }

  for (int p = 0; p < Cnt; p++)
  {

    Serial.print(digitalRead(swPins[p]));

    if (sts[p] == 1) {
      leds[ledPins[p]] = CRGB (0, 0, 255);
      FastLED.show();
      delay(60);
    }

    if (stx[p] == 1) {
      leds[ledPins[p]] = CRGB (0, 0, 255);
      FastLED.show();
      delay(60);
    }

    if (digitalRead(swPins[p]) == 0 ) {
      leds[ledPins[p]] = CRGB (255, 0, 0);
      FastLED.show();
    }

    if (digitalRead(swPins[p]) == 1) {
      leds[ledPins[p]] = CRGB (0, 255, 0);
      FastLED.show();

    }

    if (digitalRead(swPins[p]) == 1 && sts[p] == 1 ) {
      sts[p] = 0;
    }
    if (digitalRead(swPins[p]) == 0 && stx[p] == 1 ) {
      stx[p] = 0;
    }
  }
  Serial.write(13);
  //Serial.println();
}
