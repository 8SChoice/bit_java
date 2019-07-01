package ex6;

public class DemoMain {
	public static void main(String[] args) {
		DemoConst dc1 = DemoConst.getDc();
		DemoConst dc2 = DemoConst.getDc();
		System.out.println(dc1==dc2);
	}

}
