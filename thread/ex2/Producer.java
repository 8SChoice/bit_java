package ex2;

import java.util.logging.Level;
import java.util.logging.Logger;

/* Producer : 생산자 : car.push(carName, t); 을 호출하는 스레드 */
public class Producer implements Runnable{
    private Car_MT car;
    public Producer(Car_MT car) {
        this.car = car;
    }
    @Override
    public void run() {
        String carName ="";
        for(int i=0; i<20; i++){
            carName = car.getCar();
            Thread t = Thread.currentThread();
            car.push(carName, t);
            try {
                Thread.sleep((int)(Math.random()*200));
            } catch (InterruptedException ex) {
                ex.printStackTrace();
            }
        }
    }

}
