package ex5;

public class PaintFactory {
	//대문 가진 객체의 주소를 알고 있어야함.
	//has a 관계 : A가 B의 주소를 가지고있는 관계
	private Ex3_Home home;
	//인자로 참조변수를 전달받음(주입받는다.)
	public void usesPaint(Ex3_Home home, String color) {
		this.home=home;
		this.home.setDoorColor(color);
	}

}
