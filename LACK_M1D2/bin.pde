
import java.lang.reflect.Method;
// utility timer class
class Timer implements Runnable {
    // is the timer still ticking or on hold ?
    boolean isPaused = false;
    // is the thread still running ?
    boolean isRunning = true;

    // how close are we to completion (0.0 = 0 %, 1.0 = 100%)
    float progress = 0.0;
    // a reference to the time in ms since the start of the timer or reset
    long now;
    // default duration
    long duration = 10000;
    // default tick interval
    long tickInterval = 1000;
    // time at pause
    long pauseTime;

    // reference to the main sketch
    PApplet parent;
    // function to call on each tick
    Method onTick;
    // function to call when timer has completed
    Method onComplete;

    Timer(PApplet parent, String onTickFunctionName, String onCompleteFunctionName) {
      this.parent = parent;
      // try to store a reference to the tick function based on its name
      try {
        onTick = parent.getClass().getMethod(onTickFunctionName);
      } catch (Exception e) {
       
      }

      // try to store a reference to the complete function based on its name
      try {
        onComplete = parent.getClass().getMethod(onCompleteFunctionName);
      } catch (Exception e) {
      
      }
      // auto-pause
      isPaused = true;
      // get millis since the start of the program
      now = System.currentTimeMillis();
      // start the thread (processes run())
      new Thread(this).start();
    }

    // start a new stop watch with new settings
    void reset(long newDuration, long newInterval) {
      try {
        duration = newDuration;
        tickInterval = newInterval;
        now = System.currentTimeMillis();
        progress = 0;
        isPaused = false;
      //  println("resetting for ", newDuration, "ticking every", newInterval);
      }  catch (Exception e) {

      }
    }

    // cancel an existing timer
    void cancel() {
      isPaused = true;
      progress = 0.0;
    }

    // stop this thread
    void stop() {
      isRunning = false;
    }

    void pause() {
      isPaused = true;
      pauseTime = (System.currentTimeMillis() - now);
    }
    void resume() {
      now = System.currentTimeMillis() - pauseTime;
      isPaused = false;
    }

    public void run() {
      while (isRunning) {

        try {
          //sleep per tick interval
          Thread.sleep(tickInterval);
          // if we're still going
          if (!isPaused) {
            // get the current millis
            final long millis = System.currentTimeMillis();
            // update how far we're into this duration
            progress = ((millis - now) / (float)duration);
            // call the tick function
            if (onTick != null) {
              try {
                onTick.invoke(parent);
              } catch (Exception e) {
             
              }
            }
            // if we've made, pause the timer and call on complete
            if (progress >= 1.0) {
              isPaused = true;
              // call on complete
              if (onComplete != null) {
                try {
                  onComplete.invoke(parent);
                } catch (Exception e) {
                
                }
              }
            }
          }
        } catch (InterruptedException e) {
         
        }
      }
    }

}


void drawTimer() {
  pushStyle();
  noFill();
  stroke(255);
  strokeWeight(3);
  fill(192, 0, 0);
  noStroke();
  pushMatrix();
  translate(50, 50);
  rotate(radians(-90));
  arc(-50, 0,   50, 50, 0, timer1.progress * TWO_PI, PIE);
  arc(-50, 100, 50, 50, 0, timer2.progress * TWO_PI, PIE);
  arc(-50, 200, 50, 50, 0, timer3.progress * TWO_PI, PIE);
  arc(-50, 300, 50, 50, 0, timer4.progress * TWO_PI, PIE);
  arc(-50, 400, 50, 50, 0, timer5.progress * TWO_PI, PIE);
  arc(-50, 500, 50, 50, 0, timer6.progress * TWO_PI, PIE);
  arc(-50, 600, 50, 50, 0, timer7.progress * TWO_PI, PIE);
  arc(-50, 700, 50, 50, 0, timer8.progress * TWO_PI, PIE);
  arc(-50, 800, 50, 50, 0, timer9.progress * TWO_PI, PIE);
  arc(-50, 900, 50, 50, 0, timer10.progress * TWO_PI, PIE);
  arc(-50, 1000, 50, 50, 0, timer11.progress * TWO_PI, PIE);
  arc(-50, 1100, 50, 50, 0, timer12.progress * TWO_PI, PIE);
  arc(-50, 1200, 50, 50, 0, timer13.progress * TWO_PI, PIE);
  //==========================================================
  arc(-150, 0,   50, 50, 0, timer14.progress * TWO_PI, PIE);
  arc(-150, 100, 50, 50, 0, timer15.progress * TWO_PI, PIE);
  arc(-150, 200, 50, 50, 0, timer16.progress * TWO_PI, PIE);
  arc(-150, 300, 50, 50, 0, timer17.progress * TWO_PI, PIE);
  arc(-150, 400, 50, 50, 0, timer18.progress * TWO_PI, PIE);
  arc(-150, 500, 50, 50, 0, timer19.progress * TWO_PI, PIE);
  arc(-150, 600, 50, 50, 0, timer20.progress * TWO_PI, PIE);
  arc(-150, 700, 50, 50, 0, timer21.progress * TWO_PI, PIE);
  arc(-150, 800, 50, 50, 0, timer22.progress * TWO_PI, PIE);
  arc(-150, 900, 50, 50, 0, timer23.progress * TWO_PI, PIE);
  arc(-150, 1000, 50, 50, 0, timer24.progress * TWO_PI, PIE);
  arc(-150, 1100, 50, 50, 0, timer25.progress * TWO_PI, PIE);
  arc(-150, 1200, 50, 50, 0, timer26.progress * TWO_PI, PIE);
  //==========================================================
  arc(-250, 0,   50, 50, 0, timer27.progress * TWO_PI, PIE);
  arc(-250, 100, 50, 50, 0, timer28.progress * TWO_PI, PIE);
  arc(-250, 200, 50, 50, 0, timer29.progress * TWO_PI, PIE);
  arc(-250, 300, 50, 50, 0, timer30.progress * TWO_PI, PIE);
  arc(-250, 400, 50, 50, 0, timer31.progress * TWO_PI, PIE);
  arc(-250, 500, 50, 50, 0, timer32.progress * TWO_PI, PIE);
  arc(-250, 600, 50, 50, 0, timer33.progress * TWO_PI, PIE);
  arc(-250, 700, 50, 50, 0, timer34.progress * TWO_PI, PIE);
  arc(-250, 800, 50, 50, 0, timer35.progress * TWO_PI, PIE);
  arc(-250, 900, 50, 50, 0, timer36.progress * TWO_PI, PIE);
  arc(-250, 1000, 50, 50, 0, timer37.progress * TWO_PI, PIE);
  arc(-250, 1100, 50, 50, 0, timer38.progress * TWO_PI, PIE);
  arc(-250, 1200, 50, 50, 0, timer39.progress * TWO_PI, PIE);
  //=========================================================
  arc(-350, 0,   50, 50, 0, timer40.progress * TWO_PI, PIE);
  arc(-350, 100, 50, 50, 0, timer41.progress * TWO_PI, PIE);
  arc(-350, 200, 50, 50, 0, timer42.progress * TWO_PI, PIE);
  arc(-350, 300, 50, 50, 0, timer43.progress * TWO_PI, PIE);
  arc(-350, 400, 50, 50, 0, timer44.progress * TWO_PI, PIE);
  arc(-350, 500, 50, 50, 0, timer45.progress * TWO_PI, PIE);
  arc(-350, 600, 50, 50, 0, timer46.progress * TWO_PI, PIE);
  arc(-350, 700, 50, 50, 0, timer47.progress * TWO_PI, PIE);
  arc(-350, 800, 50, 50, 0, timer48.progress * TWO_PI, PIE);
  arc(-350, 900, 50, 50, 0, timer49.progress * TWO_PI, PIE);
  arc(-350, 1000, 50, 50, 0, timer50.progress * TWO_PI, PIE);
  arc(-350, 1100, 50, 50, 0, timer51.progress * TWO_PI, PIE);
  arc(-350, 1200, 50, 50, 0, timer52.progress * TWO_PI, PIE);


  popMatrix();
  popStyle();
}

String getDate() {
  return 
    nf(day(), 2)
    +"/"
    +nf(+month(), 2)
    +"/"
    +nf(year(), 4);
}

String getTime() {
  return
    nf(hour(), 2) 
    +":"
    +nf(minute(), 2)
    +":"
    +nf(second(), 2);
}
