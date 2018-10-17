package com.invoicing.service.user;

import org.junit.Test;

/**
 * 创建线程的方式
 * 1 继承Thread类
 */
public class ThreadTest extends Thread {
    int i = 0;
    @Override
    public void run() {
        for (;i < 100; i++){
            System.out.println(getName() + " " + i);
        }
    }

    public static void main(String[] args) {
        new ThreadTest().start();
        new ThreadTest().start();
    }
}
