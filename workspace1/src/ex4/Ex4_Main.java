package ex4;

public class Ex4_Main {
	public static void main(String[] args) {
		//Ex4 Member
		Ex4_Member m = new Ex4_Member();
		
		//회원의 이름을 입력합시다.
		m.setName("김길동");
		System.out.println("이름:"+m.getName());
		//급여
		m.setPay(10000, "15");
		System.out.println("출력:"+m.getPay());
	}

}
