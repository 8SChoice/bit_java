package ex2;

public class Ex4_Oper {
	public static void main(String[] args) {
		int a=12; // 0 0 0 0 1 1 0 0
		int b=2;  // 0 0 0 0 0 0 1 1
		int c=a>>b; // a:비트 연산할 변수, b:얼마나 쉬프트 할것인지
		System.out.println(c);
	}

}
