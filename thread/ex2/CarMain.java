package ex2;
/* CarMain */
public class CarMain {
    public static void main(String[] args) {
        // 생산 , 소비 객체를 생성해서 스레드로 각각 시작 
        Car_MT cm = new Car_MT();
        Producer producer = new Producer(cm);
        Customer customer = new Customer(cm);
        
        Thread t1 = new Thread(producer,"CarMaker");
        Thread t2 = new Thread(customer,"Customer");
        t1.setDaemon(true); // 메인에 종속된 Daemon
        t1.start();
        t2.start();
    }
}
