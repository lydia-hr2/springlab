package com.kbstar.tv;

import com.kbstar.frame.TV;

public class STV implements TV {
    public STV() {
    }

    @Override
    public void turnOn() {
    System.out.println("STV turnOn");
    }

    @Override
    public void turnOff() {
        System.out.println("STV turnOff");

    }
}
