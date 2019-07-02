package ex8;

public class Ex2_DefaultImple implements Ex2_Jdk8{

	@Override
	public void num1() {
		System.out.println("본사의 비법을 써봅시다.");
		System.out.println("-----------------");
		System.out.println(test2());
		System.out.println("------------------");
		Ex2_Jdk8.test();
	}
	
	public static void main(String[] args) {
		Ex2_Jdk8 ref = new Ex2_DefaultImple();
		ref.num1();
		
	}
}
