package ex2;
/* Ex1_Thread */

public class Ex1_Thread implements Runnable {

    private int value;

    @Override
    //public synchronized void run()
    public synchronized void run() {
        int i = 0;
        // 현재 스레드의 이름 
        String name = Thread.currentThread().getName();
        synchronized (this) { // 동기화 블록
            while (i < 3) {
                System.out.println(name + ",지역변수 i 값 :" + (++i));
                System.out.println(name + ",멤버필드 value 값 :" + (++value));
                System.out.println("Thread Active Cnt :" + Thread.activeCount());
            }
        }

    }

    public static void main(String[] args) {
        // Runnable을 구현한 클래스의 주소를 Thread의 생성자로 전달해서
        // start()를 호출할 수 있다
        Ex1_Thread r = new Ex1_Thread();
        new Thread(r).start();
        new Thread(r).start();
    }
}
