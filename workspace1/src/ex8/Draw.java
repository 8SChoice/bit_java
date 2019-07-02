package ex8;
//Draw
//abstract 추상 클래스로 정의
public abstract class Draw {
	private String msg;
	//abstract 추상 메서드 : 미완성된 메서드 정의
	abstract public void draw();
	public Draw() {
		msg="부모의 엄청난 자원";
	}

	public String getMsg() {
		return msg;
	}

}