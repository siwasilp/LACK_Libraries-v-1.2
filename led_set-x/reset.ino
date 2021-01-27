
void reset_0() {
  for (int j = 1 ; j < 8 ; j++) {
    for (int i = STA_LEDS; i <= NUM_LEDS; i++) {
      leds[i] = CRGB (0, 0, 255);
      FastLED.show();
      delay(3);
    }

    for (int i = NUM_LEDS; i >= STA_LEDS; i--) {
      leds[i] = CRGB (255, 0, 0);
      FastLED.show();
      delay(3);
    }

    for (int i = STA_LEDS; i <= NUM_LEDS; i++) {
      leds[i] = CRGB (0, 255, 0);
      FastLED.show();
      delay(3);
    }
  }
}
