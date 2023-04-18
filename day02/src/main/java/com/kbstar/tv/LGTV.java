package com.kbstar.tv;

import com.kbstar.frame.TV;

public class LGTV implements TV {
    public LGTV() {
    }

    @Override
    public void turnOn() {
        System.out.println("LTV turnOn");

    }

    @Override
    public void turnOff() {
        System.out.println("LTV turnOff");

    }
}
