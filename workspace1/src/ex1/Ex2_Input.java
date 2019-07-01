package ex1;

import java.util.Scanner;

public class Ex2_Input {
	//키보드 입력 : Scanner객체 사용
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);  //Scanner : 참조 자료형 : 대문자로 시작
		System.out.println("이름을 입력");
		String name = sc.nextLine();
		System.out.println("입력한 당신의 이름은:"+name);
	}

}
