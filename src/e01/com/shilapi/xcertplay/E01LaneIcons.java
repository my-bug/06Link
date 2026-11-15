package com.shilapi.xcertplay;

/** OEM lane icons are a separate vocabulary from maneuver arrows and iAP2 angles. */
final class E01LaneIcons {
    private static final int STRAIGHT = 1;
    private static final int LEFT = 2;
    private static final int RIGHT = 4;

    /**
     * The AmapAuto 2018-08-13 protocol appendix (13012 lane table), mirrored at
     * https://www.xiaodecheji.com/article/189, defines the OEM IDs below. The factory
     * naviservice LaneIDConst independently agrees with these normal/highlighted IDs.
     * iAP2 status 0 is not usable; 1 (good) and 2 (preferred) share the OEM usable style.
     * Signed angles follow mib2q-carplay-rgi lane_panel.cpp: -90 left, 0 straight,
     * +90 right. Only these exact directions are represented here, without rounding.
     * A highlight can be absent from the angle list, so it contributes a branch.
     * Unsupported branches hide the lane instead of silently changing its meaning.
     */
    static int icon(int status, int highlight, int[] angles) {
        if (status < 0 || status > 2 || angles == null || angles.length > 16) return -1;
        int branches = 0;
        for (int angle : angles) {
            int direction = direction(angle);
            if (direction == 0) return -1;
            branches |= direction;
        }
        int selected = direction(highlight);
        if (selected != 0) {
            branches |= selected;
        } else if (highlight != 1000 && highlight != -1000) {
            return -1;
        }
        if (status == 0) {
            switch (branches) {
                case STRAIGHT: return 0;
                case LEFT: return 1;
                case STRAIGHT | LEFT: return 2;
                case RIGHT: return 3;
                case STRAIGHT | RIGHT: return 4;
                default: return -1;
            }
        }
        if (selected == 0) return -1;
        switch (branches) {
            case STRAIGHT: return 15;
            case LEFT: return 16;
            case RIGHT: return 18;
            case STRAIGHT | LEFT: return selected == STRAIGHT ? 30 : 31;
            case STRAIGHT | RIGHT: return selected == STRAIGHT ? 32 : 33;
            default: return -1;
        }
    }

    private static int direction(int angle) {
        if (angle == 0) return STRAIGHT;
        if (angle == -90) return LEFT;
        if (angle == 90) return RIGHT;
        return 0;
    }

    private E01LaneIcons() {}
}
