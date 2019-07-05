package ex2;
/* Ex2_MyData */
public class Ex2_MyData {
    private int value;
    public synchronized int getValue() {
        return ++value;
    }
}
