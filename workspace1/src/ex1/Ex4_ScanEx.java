package ex1;

import java.util.Scanner;

public class Ex4_ScanEx {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("이름:");
		String name = sc.nextLine();
		System.out.print("나이:");
		//Wrapper 클래스는 일반자료형을 감싼 클래스이다.*************
		int age = Integer.parseInt(sc.nextLine());
		System.out.println("당신이 입력한 정보:");
		System.out.println("Name:"+name);
		if(age>19) {
			System.out.println("성년:"+age);
		}
		else {
			System.out.println("미성년:"+age);
		}
	}

}
