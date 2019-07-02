package ex8;
//부모 클래스를 정의
//부모 클래스를 설계 : Container, Base적인 개념으로 설계
//자식들의 옥통점을 추상적으로 설계 - 추상클래스
public class Ex1Super {
	public Ex1Super() {
		System.out.println("부모 클래스의 생성자 호출");
	}
	public void superTest() {
		System.out.println("부모 클래스의 메서드 호출");
	}
	public void mytest() {
		System.out.println("재정의 될 메서드");
	}

}
