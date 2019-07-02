package ex8;

public interface Ex2_Jdk8 {
	public int num2=20;
	public void num1();
	public static void test() {
		System.out.println("static Test");
	}
	//default 메서드
	default public String test2() {
		return "본사 비법으로 만들어진 조미료";
	}

}
