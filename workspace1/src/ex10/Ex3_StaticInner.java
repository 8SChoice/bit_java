package ex10;

public class Ex3_StaticInner {
	int numA;
	private int numB;
	static int numC=500;
	public void test() {
		System.out.println("Test!");
	}
	public Ex3_StaticInner() {
		numA=10; numB=100; numC=200;
	}
	public static class Inner{
		static int a= 10000;
		public static void printData() {
			System.out.println("int c:"+numC);
			System.out.println("int D:"+a);
		}
		public void printData2() {
			System.out.println("c:"+numC);
			System.out.println("d:"+a);
		}
	}

}
