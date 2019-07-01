package ex3;

public class Ex2_Switch {
	public static void main(String[] args) {
		//jdk 7 부터 String 문자열 비교 지원
		String s="B";
		boolean b = true;
		char ch='A';
		float f = 3.14F;
		byte bb=10;
		double bn=10.1;
		long ll=10L;
		switch(s) {
		case "A":
			System.out.println("문자열A");
			break;
		case "B":
			System.out.println("문자열 B");
		default:
			System.out.println("없는 문자열!");
		}
	}

}
