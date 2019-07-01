package ex4;

//클래스를 정의 : 설계도면, 재사용하기 위해서 Heap영역에 생성을 해서 참조변수로 참조하여 사용한다.
//this 자기 자신의 클래스 주소를 참조한다.
public class Ex3_Remocon {
	//속성
	boolean power; //true:on false:off
	int chNum;//채널의 범위 : 1~100
	//setPower가 호출될 때 인자값으로 boolean 값을 받아서 멤버필드 power에 저장하고 그 값을 판별한 후 적절한 출력을 담당
	public void setPower(boolean p) {
		//this란 키워드를 사용해서 참조한 멤버변수에 저장
		this.power=power;
		if(p==true) { //프로그램으로 실행
			System.out.println("전원이 켜졌습니다.");
		}else {
			System.out.println("전원이 꺼졌습니다.");
		}
	}
	//멤버필드 chNum을 세팅시킴
	public void setChNum(int ch) {
		chNum=ch;
	}
	public String viewControl() {
		return "지금 채널은 :"+chNum+"입니다.";
	}

}
