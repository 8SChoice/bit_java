package ex10;

public class Ex2_LocalInner {
	private int a;
	public Ex2_LocalInner() {a=100;}
	//jdk 7 이하까지는 final이라고 명시
	//8버전 이후 부터는 final이 없어도 지역변수는 상수취급
	public void insertTest(final int num) {
		int b=200; // 상수 : 내부클래스에서 참조되는 순간 변수가 아닌 상수가 된다.
		int c=num; // 상수
		class Inner{
			public void getData() {
				System.out.println("멤버필드 참조:"+a);
				
			}
		}
		new Inner().getData();
		//익명 내부클래스에서 참조해서 사용하지 않을 경우
		b=30;
		System.out.println("b:"+b);
	}
	public static void main(String[] args) {
		new Ex2_LocalInner().insertTest(200);
	}
}
