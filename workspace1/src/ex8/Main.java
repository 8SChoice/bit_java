package ex8;

public class Main {
	public static void main(String[] args) {
		//다형성 : 하나의 객체가 여러 객체를 생성, 참조, 실행 포함하는 개념
		Draw[]d=new Draw[3];
		d[0]= new Circle();
		d[1]=new Rect();
		d[2]= new Triangle();
		//변화에 유연한 코드 : 어떤 객체가 추가되더라도
		//아래코드에서는 변화가 없다.
		for(Draw e : d) {
			e.draw();
		}
	}

}
