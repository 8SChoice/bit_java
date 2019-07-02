package ex10;

public class Ex3_StaticInnerMain {
	public static void main(String[] args) {
		Ex3_StaticInner.Inner.printData();
		System.out.println("-------------------");
		new Ex3_StaticInner.Inner().printData2();
		Ex3_StaticInner.Inner ref = new Ex3_StaticInner.Inner();
		ref.printData2();
	}

}
