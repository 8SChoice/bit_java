package ex6;

public class Ex3_Const {
	//핵심포인트 : 현재 객체의 값을 초기화 할 목적으로 사용한다.
	private String msg;
	public Ex3_Const(String msg) {
		//System.out.println("문자를 인자로 받은 생성자 호출"+str);
		//전처리
		this.msg=msg;
		//후처리
		
	}
	public void print() {
		System.out.println(msg);
	}
	public void print(String str) {
		System.out.println(msg);
	}
	public static void main(String[] args) {
		Ex3_Const ref = new Ex3_Const("hi");
	}

}
