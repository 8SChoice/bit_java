package ex2;

import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/* Car_MT
// 자동차를 생상하는 공장 클래스
*/
public class Car_MT {
    // 생산할 자동차를 저장할 ArrayList선언
    private ArrayList<String> carList;
    public Car_MT() {
        carList = new ArrayList<>();
    }
    public String getCar(){
        String carName ="";
        int carNum = (int) (Math.random() * 3);
        // 자동차를 제작해서 반환 해주는 구문!
        switch(carNum){
            case 0 : carName="뉴그랜저1"; break;
            case 1 : carName="뉴그랜저2"; break;
            case 2 : carName="뉴그랜저3"; break;
        }
        return carName;
    }
    public synchronized String pop(Thread t){
        String carName ="";
        if(carList.size() == 0){
            System.out.println("생산된 자동차가 없습니다.");
            System.out.print("생산이 완료 될 때까지 대기실에서 ");
            System.out.print("커피한잔 하면서 기다리세요!");
            System.out.println("---------------------------");
            try {
                wait();
            } catch (InterruptedException ex) {
            }
        }
        carName = carList.remove(carList.size() -1);
        System.out.println("손님은 차를 구입 했습니다.");
        System.out.print("구입한 차의 정보::==>");
        System.out.println(carName+":"+t.getName());
        return carName;
    }
    public synchronized void push(String car, Thread t){
       
        carList.add(car);
        System.out.print("주문하신 "+car+"자동차가 만들어 졌습니다.");
        System.out.println("Thread:"+t.getName());
        if(carList.size() == 5){
            notify();
        }
    }
}
