package ex6;

public class Ex2_Main {
	//static : 공유할때 / 어쩔 수 없을떄 사용한다.
	//
	public static void main(String[] args) {
		Ex2_Static ref1 = new Ex2_Static();
		Ex2_Static ref2 = new Ex2_Static();
		
		ref1.startTest();
		ref2.startTest();
		
		System.out.println("static num1:"+ref1.getNum1());
		System.out.println("non static num2:"+ref1.getNum2());
		System.out.println("---------------------------");
		System.out.println("static num1:"+ref2.getNum1());
		System.out.println("non static num2:"+ref2.getNum2());
	}
	
	

}
