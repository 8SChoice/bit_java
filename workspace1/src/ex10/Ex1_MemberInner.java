package ex10;

public class Ex1_MemberInner extends SuperA{
	int numA;
	private int numB;
	static int numC;
	public Ex1_MemberInner() {
		numA=10; numB=100; numC=200;
	}
	public class Inner extends SuperB{
		public void printData() {
			System.out.println("int A : "+numA);
			System.out.println("int B : "+numB);
			System.out.println("int C : "+numC);
		}
	}
	

}
