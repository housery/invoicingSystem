package com.invoicing.service.user;

/**
 * 实现runalbe接口创建线程
 */
public class RunableTest implements Runnable {

    @Override
    public void run() {
        int i = 0;
        for (;i < 100; i++){
            System.out.println(Thread.currentThread().getName() + " " + i);
        }
    }

    public static void main(String[] args) {
        RunableTest runableTest = new RunableTest();
        new Thread(runableTest,"线程1").start();
        new Thread(runableTest,"线程2").start();
    }
}
