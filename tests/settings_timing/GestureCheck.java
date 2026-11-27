package com.shilapi.xcertplay;

import android.view.MotionEvent;
import android.view.View;
import static com.shilapi.xcertplay.CarPlayGestures.Decision.*;
import static android.view.MotionEvent.*;

public class GestureCheck {
    private final CarPlayGestures recognizer = new CarPlayGestures();
    private final View view = new View();
    private int checks;

    private void event(int action, int fingers, int x, int y, CarPlayGestures.Decision expected) {
        CarPlayGestures.Decision result = recognizer.onTouch(new MotionEvent(action, fingers, x, y), view);
        if (result != expected) throw new AssertionError(action + "/" + fingers + " expected " + expected + ", got " + result);
        checks++;
    }

    void run() {
        for (int y : new int[]{0, 36, 400}) {
            event(ACTION_DOWN, 1, 100, y, FORWARD);
            event(ACTION_MOVE, 1, 102, y, FORWARD);
            event(ACTION_POINTER_DOWN, 2, 102, y, FORWARD);
            event(ACTION_MOVE, 2, 90, y+100, FORWARD);
            event(ACTION_POINTER_UP, 2, 90, y, FORWARD);
            event(ACTION_UP, 1, 90, y, FORWARD);
        }
        event(ACTION_DOWN, 1, 100, 100, FORWARD);
        event(ACTION_POINTER_DOWN, 2, 100, 100, FORWARD);
        event(ACTION_POINTER_DOWN, 3, 100, 100, RELEASE_CARPLAY);
        event(ACTION_MOVE, 3, 100, 20, DROP);       // up
        event(ACTION_MOVE, 3, 240, 180, DROP);      // sideways
        event(ACTION_MOVE, 3, 101, 171, DROP);      // below 72dp
        event(ACTION_MOVE, 3, 101, 172, OPEN_MENU);
        event(ACTION_MOVE, 3, 101, 200, DROP);      // one menu per sequence
        event(ACTION_POINTER_UP, 3, 80, 200, DROP);
        event(ACTION_MOVE, 2, 80, 201, DROP);
        event(ACTION_POINTER_UP, 2, 80, 201, DROP);
        event(ACTION_UP, 1, 80, 201, DROP);

        event(ACTION_DOWN, 1, 0, 0, FORWARD);
        event(ACTION_POINTER_DOWN, 3, 0, 0, RELEASE_CARPLAY);
        event(ACTION_POINTER_DOWN, 4, 0, 0, DROP);
        event(ACTION_POINTER_UP, 4, 0, 0, DROP);
        event(ACTION_MOVE, 3, 0, 200, DROP);
        event(ACTION_CANCEL, 3, 0, 200, DROP);
        event(ACTION_DOWN, 1, 0, 0, FORWARD);
        event(ACTION_CANCEL, 1, 0, 0, FORWARD);
        System.out.println("PASS " + checks + " touch routing checks");
    }

    public static void main(String[] args) { new GestureCheck().run(); }
}
