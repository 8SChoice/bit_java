package ex2;

import java.util.logging.Level;
import java.util.logging.Logger;

/* Customer : 소비자 : car.pop(t) 을 호출하는 스레드 */
public class Customer implements Runnable{
    private Car_MT car;
    public Customer(Car_MT car) {
        this.car = car;
    }
    @Override
    public void run() {
        String carName ="";
        for(int i=0; i<20; i++){
            carName = car.getCar();
            Thread t = Thread.currentThread();
            carName = car.pop(t);
            try {
                Thread.sleep((int)(Math.random()*200));
            } catch (InterruptedException ex) {
                ex.printStackTrace();
            }
        }
    }

}
