package ex3;

public class Ex2_Switch {
	public static void main(String[] args) {
		//jdk 7 ���� String ���ڿ� �� ����
		String s="B";
		boolean b = true;
		char ch='A';
		float f = 3.14F;
		byte bb=10;
		double bn=10.1;
		long ll=10L;
		switch(s) {
		case "A":
			System.out.println("���ڿ�A");
			break;
		case "B":
			System.out.println("���ڿ� B");
		default:
			System.out.println("���� ���ڿ�!");
		}
	}

}
