package ex2;
/* Ex2_MyThread */

public class Ex2_MyThread1 extends Thread {

    // private int value;
    private Ex2_MyData data;

    public Ex2_MyThread1(Ex2_MyData data) {
        synchronized (this) {
            this.data = data;
        }
    }

    @Override
    public void run() {
        int i = 0;
        // 현재 스레드의 이름 
        String name = getName();
        synchronized (this) {
            while (i < 3) {
                System.out.println(name + ",지역변수 i 값 :" + (++i));
                System.out.println(name + ",멤버필드 value 값 :" + (data.getValue()));
                System.out.println("Thread Active Cnt :" + Thread.activeCount());
            }
        }

    }

    public static void main(String[] args) {
        Ex2_MyData ref = new Ex2_MyData();
        Ex2_MyThread1 t1 = new Ex2_MyThread1(ref);
        Ex2_MyThread1 t2 = new Ex2_MyThread1(ref);
        t1.start();
        t2.start();
    }
}
