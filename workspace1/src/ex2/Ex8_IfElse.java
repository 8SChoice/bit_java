package ex2;

public class Ex8_IfElse {
	public static void main(String[] args) {
		//명시적인 객체 생성방법이 아닌 묵시적 객체생성일 경우에는 문자열이 같을 경우 상수풀에 값을 저장한 주소를 함께 공유하기 때문에 두 객체의 주소값은 공유된다.
		String str1="Test";
		String str2="Test";
		if(str1==str2) {
			System.out.println("str1, str2 같다");
		}
		else {
			System.out.println("str1, str2 다르다");
		}
		if(str1.equals(str2)) {
			System.out.println("같다");
		}else {
			System.out.println("다르다");
		}
	}

}
