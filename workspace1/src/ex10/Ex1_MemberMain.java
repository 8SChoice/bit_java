package ex10;

public class Ex1_MemberMain {
	public static void main(String[] args) {
		//Ex1_MemberInner outer = new Ex1_MemberInner();
		//outer.superA();
		//Ex1_MemberInner.Inner inner;
		//inner = outer.new Inner();
		//inner.printData();
		//inner.superB();
		System.out.println("--------------------");
		new Ex1_MemberInner().new Inner().printData();
		new Ex1_MemberInner().new Inner().superB();
	}

}
