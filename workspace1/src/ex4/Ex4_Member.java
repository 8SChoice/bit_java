package ex4;
//목적 : 회원의 정보를 저장하기 위한 클래스
public class Ex4_Member {
	//정보은닉과 캡슐화
	//정보은닉은 가장 핵심적인 자원과 기술을 말 그대로 은닉화 하는 것이고
	//캡슐화는 은닉된 정보에 접근하는 방법을 제공하는 것을 말한다.
	//Pojo : 개념도 포함
	//자바의 멤버는 private접근을 제한
	//값을 주입 : setter , 값을 변환 : getter
	//클래스, 생성자, 메서드, 멤버필드
	//private : 현재 클래스 내에서만 접근
	//default: 현재 패키지 내에서만 접근
	//protected: default 포함, 다른 패키지의 상속관계 접근
	//public : all
	private String name;
	private int age;
	private boolean agree;
	private int pay;
	//저장할 수 있는 메서드를 제공
	//출력할 수 있는 메서드를 제공
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public boolean isAgree() {//boolean타입일 때만
		return agree;
	}
	public void setAgree(boolean agree) {
		this.agree = agree;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay, String pwd) {
		if(!pwd.equals("12")) {
			System.out.println("시스템 접근 권한이 없습니다.");
			System.exit(0);
		}
		this.pay = pay;
	}

}
